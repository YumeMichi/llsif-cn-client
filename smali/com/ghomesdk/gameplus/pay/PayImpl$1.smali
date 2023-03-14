.class final Lcom/ghomesdk/gameplus/pay/PayImpl$1;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/pay/PayImpl;->goPayActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;Lcom/ghomesdk/gameplus/pay/OrderModel;)V
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

.field final synthetic val$_userId:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$mordermodel:Lcom/ghomesdk/gameplus/pay/OrderModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/OrderModel;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_orderid:Ljava/lang/String;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_areaId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_extend:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_userId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$groupId:Ljava/lang/String;

    iput-object p7, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    iput-object p8, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_context:Landroid/app/Activity;

    iput-object p9, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$mordermodel:Lcom/ghomesdk/gameplus/pay/OrderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "S_orderid"

    .line 34
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_orderid:Ljava/lang/String;

    const-string v2, "orderid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_areaId:Ljava/lang/String;

    const-string v2, "areaid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_productId:Ljava/lang/String;

    const-string v2, "productid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_extend:Ljava/lang/String;

    const-string v2, "extend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_userId:Ljava/lang/String;

    const-string v2, "userid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$groupId:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actionName"

    .line 41
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 44
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    if-eqz p1, :cond_0

    const-string p2, "-10869609"

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {p2, v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, v0}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/PayCallback;

    if-eqz p1, :cond_2

    const-string p2, "-10869604"

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p2, v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, v0}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayImpl$1;->val$_context:Landroid/app/Activity;

    sget-boolean p3, Lcom/ghomesdk/gameplus/config/Assembly;->isPortrait:Z

    new-instance v1, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;

    invoke-direct {v1, p0, v0}, Lcom/ghomesdk/gameplus/pay/PayImpl$1$1;-><init>(Lcom/ghomesdk/gameplus/pay/PayImpl$1;Ljava/util/Map;)V

    invoke-static {p1, p2, p3, v1}, Lcom/ghomesdk/gameplus/pay/PayImpl;->access$000(Landroid/app/Activity;Ljava/lang/String;ZLcom/ghomesdk/gameplus/pay/CheckPayOrderStatusCallback;)V

    return-void
.end method
