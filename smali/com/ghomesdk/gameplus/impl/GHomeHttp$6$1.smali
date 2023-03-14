.class Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;
.super Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->onSuccess(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 392
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 418
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$904()I

    .line 419
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1100()V

    .line 420
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    return-void
.end method

.method protected onSuccess(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p1, "code"

    .line 395
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    .line 396
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    :try_start_0
    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/security/DESUtil;->des3decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    .line 399
    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    .line 400
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 401
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message"

    const-string v1, ""

    .line 402
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"token\" : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOKEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$904()I

    .line 412
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1100()V

    .line 413
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
