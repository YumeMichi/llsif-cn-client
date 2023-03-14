.class Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/PayActivity$2;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$100(Lcom/ghomesdk/gameplus/pay/PayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->access$200(Lcom/ghomesdk/gameplus/pay/PayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v9, "0"

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 208
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    const/4 v1, 0x0

    const-string v2, "\u7f51\u7edc\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity$2$1;->this$1:Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/pay/PayActivity$2;->this$0:Lcom/ghomesdk/gameplus/pay/PayActivity;

    const-string v2, ""

    const-string v3, "webLoadFail_finish_PayActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghomesdk/gameplus/pay/PayActivity;->finishPay(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
