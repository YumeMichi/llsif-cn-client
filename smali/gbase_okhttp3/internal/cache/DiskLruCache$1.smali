.class Lgbase_okhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/cache/DiskLruCache;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 172
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lgbase_okhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iget-boolean v4, v4, Lgbase_okhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 178
    :cond_1
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 180
    :catch_0
    :try_start_2
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v1, Lgbase_okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :goto_1
    :try_start_3
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 186
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iput v2, v1, Lgbase_okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 189
    :catch_1
    :try_start_4
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v1, Lgbase_okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 190
    iget-object v1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$1;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lgbase_okio/Okio;->blackhole()Lgbase_okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object v2

    iput-object v2, v1, Lgbase_okhttp3/internal/cache/DiskLruCache;->journalWriter:Lgbase_okio/BufferedSink;

    .line 192
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
