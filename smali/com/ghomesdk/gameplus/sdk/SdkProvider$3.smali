.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "SdkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider;->requestPayInfoAndNotify(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orderInfo:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/Map;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$actionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;)V
    .locals 3

    .line 119
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->requestPayInfoAndNotify->callback->code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getNeedReport()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 123
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->isSuccess()Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_success"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "goods_type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getContentName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "goods_name"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getContentId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "goods_id"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getContentNum()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "goods_num"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getPaymentChannel()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pay_channel"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getCurrencyAmount()Ljava/lang/String;

    move-result-object p2

    const-string v0, "currency_amount"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "order_info"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$actionName:Ljava/lang/String;

    const-string v0, "action_name"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getCurrency()Ljava/lang/String;

    move-result-object p2

    const-string p3, "currency_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$600(Lcom/ghomesdk/gameplus/sdk/SdkProvider;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 137
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->val$orderInfo:Ljava/util/Map;

    invoke-virtual {p2, p3, v0}, Lcom/ghomesdk/gameplus/sdk/Sdk;->pay(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;)V

    return-void
.end method
