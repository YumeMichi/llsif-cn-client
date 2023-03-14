.class Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayImpl$1;->onEvent(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

.field final synthetic val$retMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/pay/PayImpl$1;Ljava/util/Map;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->val$retMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    .line 64
    iget-object p2, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$mordermodel:Lcom/ghomesdk/gameplus/pay/OrderModel;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->getCodeKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    const-string p2, "-10869638"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->val$retMap:Ljava/util/Map;

    const-string v1, "\u626b\u7801\u652f\u4ed8\u6210\u529f\u3002"

    invoke-interface {p1, p2, v1, v0}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    const-string p2, "0"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->val$retMap:Ljava/util/Map;

    const-string v1, "\u652f\u4ed8\u6210\u529f\u3002"

    invoke-interface {p1, p2, v1, v0}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    const-string v0, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const-string v1, "-10869604"

    if-ne p1, p2, :cond_2

    const-string p1, "PayImpl"

    const-string p2, "\u73a9\u5bb6\u653e\u5f03\u7b49\u5f85..........."

    .line 74
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->val$retMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->this$0:Lcom/ghomesdk/gameplus/pay/PayImpl$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;->val$retMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method
