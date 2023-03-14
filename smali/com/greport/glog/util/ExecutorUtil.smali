.class public Lcom/greport/glog/util/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# static fields
.field private static TIMEOUT:J

.field private static executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x5

    .line 15
    sput-wide v0, Lcom/greport/glog/util/ExecutorUtil;->TIMEOUT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    :cond_0
    sget-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shutdown()V
    .locals 4

    .line 28
    :try_start_0
    sget-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 32
    :cond_0
    sget-object v0, Lcom/greport/glog/util/ExecutorUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-wide v1, Lcom/greport/glog/util/ExecutorUtil;->TIMEOUT:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
