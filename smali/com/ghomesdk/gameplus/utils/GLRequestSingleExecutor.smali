.class public Lcom/ghomesdk/gameplus/utils/GLRequestSingleExecutor;
.super Ljava/lang/Object;
.source "GLRequestSingleExecutor.java"


# static fields
.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/utils/GLRequestSingleExecutor;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;->doRequest()V

    return-void
.end method

.method public static doAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/ghomesdk/gameplus/utils/GLRequestSingleExecutor;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
