.class Lcom/geetest/sdk/ah;
.super Ljava/lang/Thread;
.source "GeeLoggerThread.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private volatile c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/io/File;

.field private g:Z

.field private h:J

.field private i:Lcom/geetest/sdk/ag;

.field private j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/geetest/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/geetest/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/geetest/sdk/af;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/ah;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/ah;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/ah;->c:Z

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/ah;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 29
    iput-object p1, p0, Lcom/geetest/sdk/ah;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    iput-object p2, p0, Lcom/geetest/sdk/ah;->k:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/geetest/sdk/ah;->m:J

    .line 33
    iput-wide p6, p0, Lcom/geetest/sdk/ah;->n:J

    .line 34
    iput-wide p8, p0, Lcom/geetest/sdk/ah;->o:J

    .line 35
    iput-object p10, p0, Lcom/geetest/sdk/ah;->p:Ljava/lang/String;

    .line 36
    iput-object p11, p0, Lcom/geetest/sdk/ah;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/ah;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/geetest/sdk/ah;->s:I

    return p1
.end method

.method static synthetic a(Lcom/geetest/sdk/ah;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/ah;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a(J)V
    .locals 9

    .line 38
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 44
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "\\."

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 48
    array-length v6, v5

    if-lez v6, :cond_1

    .line 49
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-gtz v8, :cond_1

    .line 50
    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 51
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/geetest/sdk/af;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/geetest/sdk/af;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/geetest/sdk/ag;->b()Lcom/geetest/sdk/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    .line 12
    new-instance v1, Lcom/geetest/sdk/ah$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/ah$a;-><init>(Lcom/geetest/sdk/ah;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ag;->a(Lcom/geetest/sdk/aj;)V

    .line 18
    iget-object v2, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    iget-object v3, p0, Lcom/geetest/sdk/ah;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    iget-wide v0, p0, Lcom/geetest/sdk/ah;->n:J

    long-to-int v5, v0

    iget-object v6, p0, Lcom/geetest/sdk/ah;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/geetest/sdk/ah;->q:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/geetest/sdk/ag;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    sget-boolean v1, Lcom/geetest/sdk/ac;->c:Z

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ag;->a(Z)V

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/geetest/sdk/af;->a:Lcom/geetest/sdk/af$a;

    sget-object v1, Lcom/geetest/sdk/af$a;->WRITE:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_2

    .line 24
    iget-object p1, p1, Lcom/geetest/sdk/af;->b:Lcom/geetest/sdk/aq;

    invoke-direct {p0, p1}, Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/aq;)V

    goto :goto_1

    .line 25
    :cond_2
    sget-object v1, Lcom/geetest/sdk/af$a;->SEND:Lcom/geetest/sdk/af$a;

    if-ne v0, v1, :cond_4

    .line 26
    iget-object v0, p1, Lcom/geetest/sdk/af;->c:Lcom/geetest/sdk/al;

    iget-object v0, v0, Lcom/geetest/sdk/al;->d:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/ah;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    iget v1, p0, Lcom/geetest/sdk/ah;->s:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_3

    .line 30
    iget-object v1, p0, Lcom/geetest/sdk/ah;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_3
    iget-object p1, p1, Lcom/geetest/sdk/af;->c:Lcom/geetest/sdk/al;

    invoke-direct {p0, p1}, Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/al;)V

    .line 34
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 36
    :cond_4
    sget-object p1, Lcom/geetest/sdk/af$a;->FLUSH:Lcom/geetest/sdk/af$a;

    if-ne v0, p1, :cond_5

    .line 37
    invoke-direct {p0}, Lcom/geetest/sdk/ah;->b()V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lcom/geetest/sdk/al;)V
    .locals 2

    const-string v0, "Logan send start"

    .line 81
    invoke-static {v0}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/geetest/sdk/al;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/geetest/sdk/ah;->b(Lcom/geetest/sdk/al;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Logan prepare log file failed, can\'t find log file"

    .line 87
    invoke-static {p1}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    iget-object v0, p1, Lcom/geetest/sdk/al;->d:Lcom/geetest/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/ao;->a(Lcom/geetest/sdk/al;)V

    .line 91
    iget-object v0, p1, Lcom/geetest/sdk/al;->d:Lcom/geetest/sdk/ao;

    new-instance v1, Lcom/geetest/sdk/ah$b;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/ah$b;-><init>(Lcom/geetest/sdk/ah;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/ao;->setCallBackListener(Lcom/geetest/sdk/ao$a;)V

    const/16 v0, 0x2711

    .line 105
    iput v0, p0, Lcom/geetest/sdk/ah;->s:I

    .line 106
    iget-object v0, p0, Lcom/geetest/sdk/ah;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lcom/geetest/sdk/ah$c;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/ah$c;-><init>(Lcom/geetest/sdk/ah;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/ah;->u:Ljava/util/concurrent/ExecutorService;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/ah;->u:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/geetest/sdk/al;->d:Lcom/geetest/sdk/ao;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/geetest/sdk/aq;)V
    .locals 10

    .line 56
    sget-boolean v0, Lcom/geetest/sdk/ac;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Logan write start"

    .line 57
    invoke-static {v0}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/ah;->f:Ljava/io/File;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/geetest/sdk/ah;->f:Ljava/io/File;

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/geetest/sdk/ah;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-static {}, Lcom/geetest/sdk/ap;->a()J

    move-result-wide v0

    .line 66
    iget-wide v2, p0, Lcom/geetest/sdk/ah;->m:J

    sub-long v2, v0, v2

    .line 67
    invoke-direct {p0, v2, v3}, Lcom/geetest/sdk/ah;->a(J)V

    .line 68
    iput-wide v0, p0, Lcom/geetest/sdk/ah;->d:J

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    iget-wide v2, p0, Lcom/geetest/sdk/ah;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/geetest/sdk/ah;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/geetest/sdk/ah;->g:Z

    .line 75
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geetest/sdk/ah;->h:J

    .line 77
    iget-boolean v0, p0, Lcom/geetest/sdk/ah;->g:Z

    if-nez v0, :cond_4

    return-void

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    iget v2, p1, Lcom/geetest/sdk/aq;->f:I

    iget-object v3, p1, Lcom/geetest/sdk/aq;->a:Ljava/lang/String;

    iget-wide v4, p1, Lcom/geetest/sdk/aq;->e:J

    iget-object v6, p1, Lcom/geetest/sdk/aq;->d:Ljava/lang/String;

    iget-wide v7, p1, Lcom/geetest/sdk/aq;->c:J

    iget-boolean v9, p1, Lcom/geetest/sdk/aq;->b:Z

    invoke-virtual/range {v1 .. v9}, Lcom/geetest/sdk/ag;->a(ILjava/lang/String;JLjava/lang/String;JZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/geetest/sdk/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/ah;->t:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/geetest/sdk/ac;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Logan flush start"

    .line 3
    invoke-static {v0}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/ah;->i:Lcom/geetest/sdk/ag;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/geetest/sdk/ag;->a()V

    :cond_1
    return-void
.end method

.method private b(Lcom/geetest/sdk/al;)Z
    .locals 2

    const-string v0, "prepare log file"

    .line 7
    invoke-static {v0}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, Lcom/geetest/sdk/al;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/geetest/sdk/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/geetest/sdk/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/geetest/sdk/al;->c:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, ""

    .line 24
    iput-object v0, p1, Lcom/geetest/sdk/al;->c:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/geetest/sdk/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/ah;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private c()Z
    .locals 5

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/geetest/sdk/ah;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 4
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    .line 6
    iget-wide v0, p0, Lcom/geetest/sdk/ah;->o:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/geetest/sdk/ah;->d:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/geetest/sdk/ah;->e:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/geetest/sdk/ah;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/geetest/sdk/ah;->c:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/geetest/sdk/ah;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/geetest/sdk/ah;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geetest/sdk/af;

    if-nez v3, :cond_0

    .line 8
    iput-boolean v2, p0, Lcom/geetest/sdk/ah;->e:Z

    .line 9
    iget-object v3, p0, Lcom/geetest/sdk/ah;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 10
    iput-boolean v1, p0, Lcom/geetest/sdk/ah;->e:Z

    goto :goto_1

    .line 12
    :cond_0
    invoke-direct {p0, v3}, Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/af;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 16
    iput-boolean v2, p0, Lcom/geetest/sdk/ah;->e:Z

    .line 18
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
