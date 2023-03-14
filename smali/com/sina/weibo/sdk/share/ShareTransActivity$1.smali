.class final Lcom/sina/weibo/sdk/share/ShareTransActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/share/ShareTransActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic y:Lcom/sina/weibo/sdk/share/ShareTransActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/share/ShareTransActivity;Landroid/os/Looper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity$1;->y:Lcom/sina/weibo/sdk/share/ShareTransActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity$1;->y:Lcom/sina/weibo/sdk/share/ShareTransActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->a(Lcom/sina/weibo/sdk/share/ShareTransActivity;Landroid/content/Intent;)V

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/share/ShareTransActivity$1;->y:Lcom/sina/weibo/sdk/share/ShareTransActivity;

    invoke-static {p1}, Lcom/sina/weibo/sdk/share/ShareTransActivity;->a(Lcom/sina/weibo/sdk/share/ShareTransActivity;)V

    return-void
.end method
