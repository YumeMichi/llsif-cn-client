.class public final Lcom/sina/weibo/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final E:I

.field private static final F:I

.field private static final G:I

.field private static final I:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private H:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 12
    sput v0, Lcom/sina/weibo/sdk/a/a;->E:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sina/weibo/sdk/a/a;->F:I

    .line 13
    sget v0, Lcom/sina/weibo/sdk/a/a;->E:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sina/weibo/sdk/a/a;->G:I

    .line 20
    new-instance v0, Lcom/sina/weibo/sdk/a/a$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/a/a$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/a/a;->I:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a;->H:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/sina/weibo/sdk/a/a;->F:I

    sget v3, Lcom/sina/weibo/sdk/a/a;->G:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v1, 0x5

    sget-object v8, Lcom/sina/weibo/sdk/a/a;->I:Ljava/util/Comparator;

    invoke-direct {v7, v1, v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->H:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/a/c;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a;->H:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1147
    iget v1, p1, Lcom/sina/weibo/sdk/a/c;->L:I

    sget v2, Lcom/sina/weibo/sdk/a/c$b;->U:I

    if-eq v1, v2, :cond_2

    .line 1148
    sget-object v1, Lcom/sina/weibo/sdk/a/c$4;->R:[I

    iget v2, p1, Lcom/sina/weibo/sdk/a/c;->L:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1150
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1161
    :cond_2
    :goto_0
    sget v1, Lcom/sina/weibo/sdk/a/c$b;->V:I

    iput v1, p1, Lcom/sina/weibo/sdk/a/c;->L:I

    .line 1165
    iget-object v1, p1, Lcom/sina/weibo/sdk/a/c;->M:Lcom/sina/weibo/sdk/a/c$d;

    .line 2108
    iget-object v2, p1, Lcom/sina/weibo/sdk/a/c;->P:[Ljava/lang/Object;

    .line 1165
    iput-object v2, v1, Lcom/sina/weibo/sdk/a/c$d;->Y:[Ljava/lang/Object;

    .line 1167
    iget-object v1, p1, Lcom/sina/weibo/sdk/a/c;->M:Lcom/sina/weibo/sdk/a/c$d;

    .line 3100
    iget v2, p1, Lcom/sina/weibo/sdk/a/c;->O:I

    .line 1167
    iput v2, v1, Lcom/sina/weibo/sdk/a/c$d;->priority:I

    .line 1169
    iget-object p1, p1, Lcom/sina/weibo/sdk/a/c;->N:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
