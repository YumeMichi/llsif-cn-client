.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;
.super Ljava/lang/Object;
.source "CheckPayOrderStatusThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->openCheckPayOrderStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$002(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Z)Z

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    new-instance v1, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$200(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-direct {v1, v2, v3}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$102(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$2;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$100(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->show()V

    :cond_0
    return-void
.end method
