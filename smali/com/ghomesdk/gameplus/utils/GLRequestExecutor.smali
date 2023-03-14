.class public Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;
.super Ljava/lang/Object;
.source "GLRequestExecutor.java"


# static fields
.field private static final THREAD_NUMBER:I = 0xf

.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V
    .locals 0

    .line 34
    invoke-interface {p0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;->doRequest()V

    return-void
.end method

.method public static doAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
