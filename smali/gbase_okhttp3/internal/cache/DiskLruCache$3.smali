.class Lgbase_okhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lgbase_okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/cache/DiskLruCache;)V
    .locals 1

    .line 738
    iput-object p1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iget-object v0, v0, Lgbase_okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 749
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 751
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 753
    :try_start_0
    iget-object v2, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iget-boolean v2, v2, Lgbase_okhttp3/internal/cache/DiskLruCache;->closed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v3

    .line 755
    :cond_1
    :goto_0
    iget-object v2, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 756
    iget-object v2, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbase_okhttp3/internal/cache/DiskLruCache$Entry;

    .line 757
    invoke-virtual {v2}, Lgbase_okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 759
    :cond_2
    iput-object v2, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 760
    monitor-exit v0

    return v1

    .line 762
    :cond_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public next()Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 1

    .line 768
    invoke-virtual {p0}, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v0, 0x0

    .line 770
    iput-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 771
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0

    .line 768
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->next()Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 775
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 777
    :try_start_0
    iget-object v2, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgbase_okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 782
    iput-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    throw v0

    :catch_0
    :goto_0
    iput-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
