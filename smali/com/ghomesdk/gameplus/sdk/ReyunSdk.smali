.class public Lcom/ghomesdk/gameplus/sdk/ReyunSdk;
.super Lcom/ghomesdk/gameplus/sdk/Sdk;
.source "ReyunSdk.java"


# instance fields
.field private final REYUN_SDK_API_CALL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final configTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/sdk/Sdk;-><init>()V

    const-string v0, "ReyunSdk"

    .line 21
    iput-object v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->TAG:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->REYUN_SDK_API_CALL:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->configTypeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeGameStage(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->changeGameStage(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public checkOutOrder(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReYunSdk->checkOutOrder data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReyunSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "orderJson"

    .line 205
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    if-nez v2, :cond_2

    return-void

    .line 209
    :cond_2
    iget-object v3, v2, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;->currencyAmount:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string v5, ""

    .line 211
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 212
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 214
    :cond_3
    iget-object v3, v2, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;->orderId:Ljava/lang/String;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;->currencyType:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/reyun/tracking/sdk/Tracking;->setOrder(Ljava/lang/String;Ljava/lang/String;F)V

    .line 216
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "orderJsonInfo"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "{}"

    .line 218
    invoke-static {v2, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tracking.setOrder"

    invoke-static {p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createRole(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public enterServer(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ReyunSdk"

    const-string p2, "ReYunSdk->setEvent"

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getConfigTypeName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->configTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReYunSdk->init params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReyunSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "third_app_key"

    .line 145
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 146
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "{}"

    const-string v4, "Tracking.initWithKeyAndChannelId"

    const-string v5, "success"

    if-eqz v2, :cond_1

    const-string p2, "ReYunSdk->init failed-> appKey is empty"

    .line 147
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "false"

    .line 149
    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v2, "appKey is empty"

    .line 150
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p2, v3}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v4, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appKey: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", channel: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, p2, v0}, Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "appKey"

    .line 161
    invoke-interface {v2, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "channelId"

    .line 162
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "true"

    .line 163
    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v4, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReYunSdk->login-> data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReyunSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "userId"

    .line 66
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 68
    invoke-static {p2}, Lcom/reyun/tracking/sdk/Tracking;->setLoginSuccessBusiness(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "{}"

    .line 73
    invoke-static {v2, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tracking.setLoginSuccessBusiness"

    invoke-static {p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onApplicationCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->exitSdk()V

    const-string v0, "ReyunSdk"

    const-string v1, "ReYunSdk->onDestroy"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Tracking.exitSdk()"

    .line 44
    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public passNewGuid(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ReyunSdk"

    const-string p2, "ReYunSdk->passNewGuid"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReYunSdk->pay data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReyunSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "is_success"

    .line 174
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "true"

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "order_id"

    .line 178
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "pay_channel"

    .line 179
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "currency_type"

    .line 180
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "currency_amount"

    .line 181
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v4, :cond_4

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 184
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 187
    :cond_4
    invoke-static {v0, v2, v3, v5}, Lcom/reyun/tracking/sdk/Tracking;->setPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 189
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "transactionId"

    .line 190
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "paymentType"

    .line 191
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currencyType"

    .line 192
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tmpCurrencyAmount"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {v5, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p2, "{}"

    .line 195
    invoke-static {v5, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tracking.setPayment"

    invoke-static {p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rechargeFirstTime(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ReyunSdk"

    const-string p2, "ReYunSdk->rechargeFirstTime"

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReYunSdk->register-> data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReyunSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "userId"

    .line 51
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lcom/reyun/tracking/sdk/Tracking;->setRegisterWithAccountID(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "{}"

    .line 58
    invoke-static {v2, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tracking.setRegisterWithAccountID"

    invoke-static {p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRoleLevel(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;->isSDKInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ReyunSdk"

    const-string p2, "ReYunSdk->updateRoleLevel"

    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
