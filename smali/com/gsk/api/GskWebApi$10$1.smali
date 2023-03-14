.class Lcom/gsk/api/GskWebApi$10$1;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gsk/api/GskWebApi$10;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi$10;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$10$1;->this$1:Lcom/gsk/api/GskWebApi$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 464
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$10$1;->this$1:Lcom/gsk/api/GskWebApi$10;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi$10;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 465
    iget-object v1, p0, Lcom/gsk/api/GskWebApi$10$1;->this$1:Lcom/gsk/api/GskWebApi$10;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi$10;->val$url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 466
    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$300()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 469
    iput v2, v1, Landroid/os/Message;->what:I

    .line 470
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$10$1;->this$1:Lcom/gsk/api/GskWebApi$10;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi$10;->val$payResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
