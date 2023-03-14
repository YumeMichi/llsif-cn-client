.class Lcom/gsk/api/GskWebApi$12;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->goQQpay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;

.field final synthetic val$jsonstring:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$12;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$12;->val$jsonstring:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ""

    .line 548
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/gsk/api/GskWebApi$12;->val$jsonstring:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "token_id"

    .line 549
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appid"

    .line 550
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nonce"

    .line 551
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bargainorId"

    .line 552
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sig"

    .line 553
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    new-instance v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v6}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    .line 555
    iput-object v3, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    const/4 v7, 0x6

    .line 556
    invoke-static {v7}, Lcom/gsk/api/GskWebApi;->getRandomString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    const-string v7, "qwalletcoresdk"

    .line 557
    iput-object v7, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    .line 558
    iput-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    .line 559
    iput-object v0, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    const-string v0, "\u63d0\u793a\u8bed"

    .line 560
    iput-object v0, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    .line 561
    iput-object v4, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    .line 563
    iput-object v5, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    .line 564
    iput-object v1, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    const-string v0, "HMAC-SHA1"

    .line 565
    iput-object v0, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    .line 566
    invoke-virtual {v6}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QQ\u652f\u4ed8\u53c2\u6570\u5b8c\u6574\uff1a api.appId=="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " api.serialNumber=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " api.callbackScheme==QQPayResultActivity api.tokenId=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.pubAcc=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.pubAccHint=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.nonce=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.timeStamp=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " api.bargainorId=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.sig=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " api.sigType=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/gsk/api/GskWebApi;->openApi:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, v6}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    goto :goto_0

    .line 570
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QQ\u652f\u4ed8\u53c2\u6570\u4e0d\u5b8c\u6574\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startQQPay done........"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 575
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
