.class Lcom/ghomesdk/gameplus/pay/PayActivity$7;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity;->finishPay(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$code:I

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    iput p2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 359
    sget-object v0, Lcom/ghomesdk/gameplus/pay/PayActivity;->event:Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/ghomesdk/gameplus/pay/PayActivity;->event:Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;

    iget v1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$code:I

    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$orderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->val$actionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;->onEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "PayActivity"

    const-string v1, "PayActivity finish"

    .line 362
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->finish()V

    return-void
.end method
