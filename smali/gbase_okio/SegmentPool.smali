.class final Lgbase_okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lgbase_okio/Segment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recycle(Lgbase_okio/Segment;)V
    .locals 8

    .line 52
    iget-object v0, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lgbase_okio/Segment;->prev:Lgbase_okio/Segment;

    if-nez v0, :cond_2

    .line 53
    iget-boolean v0, p0, Lgbase_okio/Segment;->shared:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    const-class v0, Lgbase_okio/SegmentPool;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-wide v1, Lgbase_okio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v5, 0x10000

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    monitor-exit v0

    return-void

    .line 56
    :cond_1
    sget-wide v1, Lgbase_okio/SegmentPool;->byteCount:J

    add-long/2addr v1, v3

    sput-wide v1, Lgbase_okio/SegmentPool;->byteCount:J

    .line 57
    sget-object v1, Lgbase_okio/SegmentPool;->next:Lgbase_okio/Segment;

    iput-object v1, p0, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lgbase_okio/Segment;->limit:I

    iput v1, p0, Lgbase_okio/Segment;->pos:I

    .line 59
    sput-object p0, Lgbase_okio/SegmentPool;->next:Lgbase_okio/Segment;

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static take()Lgbase_okio/Segment;
    .locals 6

    .line 39
    const-class v0, Lgbase_okio/SegmentPool;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lgbase_okio/SegmentPool;->next:Lgbase_okio/Segment;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lgbase_okio/SegmentPool;->next:Lgbase_okio/Segment;

    .line 42
    iget-object v2, v1, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    sput-object v2, Lgbase_okio/SegmentPool;->next:Lgbase_okio/Segment;

    const/4 v2, 0x0

    .line 43
    iput-object v2, v1, Lgbase_okio/Segment;->next:Lgbase_okio/Segment;

    .line 44
    sget-wide v2, Lgbase_okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lgbase_okio/SegmentPool;->byteCount:J

    .line 45
    monitor-exit v0

    return-object v1

    .line 47
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lgbase_okio/Segment;

    invoke-direct {v0}, Lgbase_okio/Segment;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
