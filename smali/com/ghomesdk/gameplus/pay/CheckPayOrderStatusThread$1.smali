.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "CheckPayOrderStatusThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;)V
    .locals 0

    if-nez p1, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->getStatus()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const/4 p2, 0x0

    const-string p3, "\u652f\u4ed8\u6210\u529f\u3002"

    invoke-virtual {p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const-string p3, "\u7528\u6237\u653e\u5f03\u7b49\u5f85\u3002"

    invoke-virtual {p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p3, "CheckPayOrderStatusThread"

    .line 50
    invoke-static {p3, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p3, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    invoke-virtual {p3, p1, p2}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;)V

    return-void
.end method
