.class final Lcom/ghomesdk/gameplus/GamePlus$5;
.super Ljava/lang/Object;
.source "GamePlus.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->my_payInGameProduct(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_areaId:Ljava/lang/String;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

.field final synthetic val$_context:Landroid/app/Activity;

.field final synthetic val$_extend:Ljava/lang/String;

.field final synthetic val$_orderid:Ljava/lang/String;

.field final synthetic val$_productId:Ljava/lang/String;

.field final synthetic val$codeKey:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$loginInfo:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/PayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_areaId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_extend:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_orderid:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_productId:Ljava/lang/String;

    iput-object p7, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$codeKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$groupId:Ljava/lang/String;

    iput-object p9, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$loginInfo:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 11

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, p2, v0}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void

    .line 431
    :cond_0
    new-instance v10, Lcom/ghomesdk/gameplus/pay/OrderModel;

    invoke-direct {v10}, Lcom/ghomesdk/gameplus/pay/OrderModel;-><init>()V

    .line 432
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setAppid(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_areaId:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setAreaid(Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setChannel(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_extend:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setExtend(Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_orderid:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setOrderid(Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_productId:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setProductid(Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setDeviceid(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v10, v0}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setSimid(Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setMac(Ljava/lang/String;)V

    .line 441
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setToken(Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/LogIDUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setLogid(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$codeKey:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setCodeKey(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$groupId:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setGroupId(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_context:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$loginInfo:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$groupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_orderid:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_areaId:Ljava/lang/String;

    iget-object v7, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_productId:Ljava/lang/String;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_extend:Ljava/lang/String;

    iget-object v9, p0, Lcom/ghomesdk/gameplus/GamePlus$5;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    invoke-static/range {v2 .. v10}, Lcom/ghomesdk/gameplus/pay/PayImpl;->goPayActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;Lcom/ghomesdk/gameplus/pay/OrderModel;)V

    return-void
.end method
