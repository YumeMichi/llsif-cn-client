.class final Lcom/sina/weibo/sdk/a/c$3;
.super Lcom/sina/weibo/sdk/a/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/a/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/weibo/sdk/a/c<",
        "TParams;TProgress;TResult;>.c;"
    }
.end annotation


# instance fields
.field final synthetic Q:Lcom/sina/weibo/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/a/c;Lcom/sina/weibo/sdk/a/c$d;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/c$3;->Q:Lcom/sina/weibo/sdk/a/c;

    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/a/c$c;-><init>(Lcom/sina/weibo/sdk/a/c;Lcom/sina/weibo/sdk/a/c$d;)V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final done()V
    .locals 7

    const-string v0, "An error occur while execute doInBackground()."

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/a/c$3;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v1, p0, Lcom/sina/weibo/sdk/a/c$3;->Q:Lcom/sina/weibo/sdk/a/c;

    .line 2013
    iget-object v1, v1, Lcom/sina/weibo/sdk/a/c;->x:Landroid/os/Handler;

    .line 87
    new-instance v2, Lcom/sina/weibo/sdk/a/c$a;

    iget-object v3, p0, Lcom/sina/weibo/sdk/a/c$3;->Q:Lcom/sina/weibo/sdk/a/c;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {v2, v3, v5}, Lcom/sina/weibo/sdk/a/c$a;-><init>(Lcom/sina/weibo/sdk/a/c;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 85
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :catch_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/c$3;->Q:Lcom/sina/weibo/sdk/a/c;

    .line 1013
    iget-object v0, v0, Lcom/sina/weibo/sdk/a/c;->x:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 80
    new-instance v2, Lcom/sina/weibo/sdk/a/c$a;

    iget-object v3, p0, Lcom/sina/weibo/sdk/a/c$3;->Q:Lcom/sina/weibo/sdk/a/c;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sina/weibo/sdk/a/c$a;-><init>(Lcom/sina/weibo/sdk/a/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 78
    :catch_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :catch_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
