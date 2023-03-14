.class final Lcom/sina/weibo/sdk/a/c$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/a/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Q:Lcom/sina/weibo/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/a/c;Landroid/os/Looper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/c$1;->Q:Lcom/sina/weibo/sdk/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sina/weibo/sdk/a/c$a;

    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/sina/weibo/sdk/a/c$a;->S:Lcom/sina/weibo/sdk/a/c;

    iget-object v0, v0, Lcom/sina/weibo/sdk/a/c$a;->T:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/a/c;->a(Lcom/sina/weibo/sdk/a/c;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    return-void
.end method
