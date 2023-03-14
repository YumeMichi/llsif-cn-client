.class Lgbase_okhttp3/internal/cache/DiskLruCache$2;
.super Lgbase_okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lgbase_okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/internal/cache/DiskLruCache;Lgbase_okio/Sink;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$2;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lgbase_okhttp3/internal/cache/FaultHidingSink;-><init>(Lgbase_okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lgbase_okhttp3/internal/cache/DiskLruCache$2;->this$0:Lgbase_okhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgbase_okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method
