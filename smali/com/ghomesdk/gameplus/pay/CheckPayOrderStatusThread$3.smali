.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;
.super Ljava/lang/Object;
.source "CheckPayOrderStatusThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;ILjava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    iput p2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$300(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$002(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Z)Z

    .line 90
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$100(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->dismiss()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$300(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    move-result-object v0

    iget v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->val$code:I

    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;->callback(ILjava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$3;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->access$302(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;

    :cond_1
    return-void
.end method
