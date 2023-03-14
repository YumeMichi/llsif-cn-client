.class Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;
.super Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->callback(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 300
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-boolean v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$background:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_retry:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v4, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v5, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v6, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    const-string v7, "-10869601"

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 325
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v2, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_tag:Ljava/lang/Object;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v3, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-boolean v4, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$background:Z

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v5, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_url:Ljava/lang/String;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v6, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_params:Ljava/util/Map;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget p1, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_retry:I

    add-int/lit8 v7, p1, -0x1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v8, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v9, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v10, p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    invoke-static/range {v2 .. v10}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$800(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method protected onSuccess(ILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-boolean v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$background:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    :cond_0
    const-string v0, "data"

    .line 306
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "message"

    .line 307
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 309
    :try_start_0
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/security/DESUtil;->des3decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 314
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v6, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v7, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;->this$0:Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    iget-object v8, v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    move v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$700(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method
