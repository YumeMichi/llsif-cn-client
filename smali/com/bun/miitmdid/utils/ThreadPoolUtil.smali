.class public Lcom/bun/miitmdid/utils/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CORE_POOL_SIZE:I = 0x2

.field private static KEEP_ALIVE_TIME:I = 0x1388

.field private static MAX_POOL_SIZE:I = 0x5

.field private static blockingQueue:Ljava/util/concurrent/BlockingQueue;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/bun/miitmdid/utils/ThreadPoolUtil$1;

    invoke-direct {v0}, Lcom/bun/miitmdid/utils/ThreadPoolUtil$1;-><init>()V

    sput-object v0, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->CORE_POOL_SIZE:I

    sget v3, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->MAX_POOL_SIZE:I

    sget v1, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->KEEP_ALIVE_TIME:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/bun/miitmdid/utils/ThreadPoolUtil;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x89

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-wide v1, 0x176274a97a1L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
