.class final Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;
.super Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp;->handshake(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

.field final synthetic val$_context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V
    .locals 0

    .line 376
    iput-object p6, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_context:Landroid/content/Context;

    iput-object p7, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-direct/range {p0 .. p5}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 431
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$904()I

    .line 432
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1100()V

    .line 433
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    return-void
.end method

.method protected onSuccess(ILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string p1, "code"

    .line 379
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "data"

    .line 380
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "key"

    .line 381
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_context:Landroid/content/Context;

    invoke-static {p2}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "randkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&deviceid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$900()I

    move-result v1

    if-lez v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reason=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/security/RSAUtil;->rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keykey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", randkey "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", deviceid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RSA"

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getHandShakeUrl()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;-><init>(Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/GLRequestSingleExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$904()I

    .line 425
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1100()V

    .line 426
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
