.class public abstract Lcom/sina/weibo/sdk/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/a/c$a;,
        Lcom/sina/weibo/sdk/a/c$c;,
        Lcom/sina/weibo/sdk/a/c$d;,
        Lcom/sina/weibo/sdk/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile L:I

.field final M:Lcom/sina/weibo/sdk/a/c$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/weibo/sdk/a/c$d<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field final N:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field O:I

.field P:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget v0, Lcom/sina/weibo/sdk/a/c$b;->U:I

    iput v0, p0, Lcom/sina/weibo/sdk/a/c;->L:I

    const/4 v0, 0x5

    .line 27
    iput v0, p0, Lcom/sina/weibo/sdk/a/c;->O:I

    .line 38
    new-instance v0, Lcom/sina/weibo/sdk/a/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/a/c$1;-><init>(Lcom/sina/weibo/sdk/a/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/c;->x:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/sina/weibo/sdk/a/c$2;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/a/c$2;-><init>(Lcom/sina/weibo/sdk/a/c;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/c;->M:Lcom/sina/weibo/sdk/a/c$d;

    .line 67
    new-instance v0, Lcom/sina/weibo/sdk/a/c$3;

    iget-object v1, p0, Lcom/sina/weibo/sdk/a/c;->M:Lcom/sina/weibo/sdk/a/c$d;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/a/c$3;-><init>(Lcom/sina/weibo/sdk/a/c;Lcom/sina/weibo/sdk/a/c$d;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/c;->N:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/a/c;->onPostExecute(Ljava/lang/Object;)V

    .line 1121
    sget p1, Lcom/sina/weibo/sdk/a/c$b;->W:I

    iput p1, p0, Lcom/sina/weibo/sdk/a/c;->L:I

    return-void
.end method


# virtual methods
.method protected varargs abstract l()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method
