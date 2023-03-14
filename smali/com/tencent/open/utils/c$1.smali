.class Lcom/tencent/open/utils/c$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/c;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/c;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/c;Landroid/os/Looper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/open/utils/c$1;->a:Lcom/tencent/open/utils/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsynLoadImg"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/open/utils/c$1;->a:Lcom/tencent/open/utils/c;

    invoke-static {v0}, Lcom/tencent/open/utils/c;->a(Lcom/tencent/open/utils/c;)Lcom/tencent/open/utils/d;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/open/utils/d;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/utils/c$1;->a:Lcom/tencent/open/utils/c;

    invoke-static {v0}, Lcom/tencent/open/utils/c;->a(Lcom/tencent/open/utils/c;)Lcom/tencent/open/utils/d;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/open/utils/d;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
