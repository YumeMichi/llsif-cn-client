.class Lgbase_okhttp3/Cache$CacheResponseBody;
.super Lgbase_okhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lgbase_okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 741
    invoke-direct {p0}, Lgbase_okhttp3/ResponseBody;-><init>()V

    .line 742
    iput-object p1, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->snapshot:Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 743
    iput-object p2, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 744
    iput-object p3, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    .line 746
    invoke-virtual {p1, p2}, Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lgbase_okio/Source;

    move-result-object p2

    .line 747
    new-instance p3, Lgbase_okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lgbase_okhttp3/Cache$CacheResponseBody$1;-><init>(Lgbase_okhttp3/Cache$CacheResponseBody;Lgbase_okio/Source;Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->bodySource:Lgbase_okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    .line 761
    :try_start_0
    iget-object v2, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public contentType()Lgbase_okhttp3/MediaType;
    .locals 1

    .line 756
    iget-object v0, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgbase_okhttp3/MediaType;->parse(Ljava/lang/String;)Lgbase_okhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lgbase_okio/BufferedSource;
    .locals 1

    .line 768
    iget-object v0, p0, Lgbase_okhttp3/Cache$CacheResponseBody;->bodySource:Lgbase_okio/BufferedSource;

    return-object v0
.end method
