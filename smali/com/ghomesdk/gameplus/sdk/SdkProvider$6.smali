.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;
.super Ljava/lang/Object;
.source "SdkProvider.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider;->checkoutOrder(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$orderInfo:Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;Ljava/util/Map;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$orderInfo:Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->notifyAfterPayFinished->getTicket  code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$activity:Landroid/app/Activity;

    const-string p1, "ticket"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$orderInfo:Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    iget-object v4, p1, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;->orderId:Ljava/lang/String;

    const/4 v5, 0x5

    new-instance v6, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/ghomesdk/gameplus/impl/SdkServerApi;->queryOrderPurchase(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
