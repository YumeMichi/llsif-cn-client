.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "SdkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->callback(ILjava/lang/String;Ljava/util/Map;)V
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
.field final synthetic this$1:Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;->this$1:Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;)V
    .locals 3

    .line 258
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->checkoutOrder code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  data:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 259
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->getNeedReport()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 260
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;->this$1:Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$600(Lcom/ghomesdk/gameplus/sdk/SdkProvider;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 261
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;->this$1:Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;->this$1:Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;->val$data:Ljava/util/Map;

    invoke-virtual {p2, p3, v0}, Lcom/ghomesdk/gameplus/sdk/Sdk;->checkOutOrder(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 255
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;)V

    return-void
.end method
