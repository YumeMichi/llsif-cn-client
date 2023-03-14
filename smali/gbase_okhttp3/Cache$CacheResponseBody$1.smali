.class Lgbase_okhttp3/Cache$CacheResponseBody$1;
.super Lgbase_okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/Cache$CacheResponseBody;-><init>(Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lgbase_okhttp3/Cache$CacheResponseBody;Lgbase_okio/Source;Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lgbase_okhttp3/Cache$CacheResponseBody$1;->this$0:Lgbase_okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lgbase_okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lgbase_okio/ForwardingSource;-><init>(Lgbase_okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lgbase_okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 750
    invoke-super {p0}, Lgbase_okio/ForwardingSource;->close()V

    return-void
.end method
