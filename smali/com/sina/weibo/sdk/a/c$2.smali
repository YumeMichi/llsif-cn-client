.class final Lcom/sina/weibo/sdk/a/c$2;
.super Lcom/sina/weibo/sdk/a/c$d;
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
        "Lcom/sina/weibo/sdk/a/c$d<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic Q:Lcom/sina/weibo/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/a/c;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/c$2;->Q:Lcom/sina/weibo/sdk/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/a/c$d;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/c$2;->Q:Lcom/sina/weibo/sdk/a/c;

    .line 1013
    iget v0, v0, Lcom/sina/weibo/sdk/a/c;->O:I

    .line 62
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 63
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/c$2;->Q:Lcom/sina/weibo/sdk/a/c;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/a/c;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
