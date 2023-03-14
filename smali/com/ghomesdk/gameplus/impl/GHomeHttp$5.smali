.class final Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;
.super Ljava/lang/Object;
.source "GHomeHttp.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

.field final synthetic val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

.field final synthetic val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

.field final synthetic val$_params:Ljava/util/Map;

.field final synthetic val$_retry:I

.field final synthetic val$_tag:Ljava/lang/Object;

.field final synthetic val$_url:Ljava/lang/String;

.field final synthetic val$background:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;ILjava/lang/Object;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_params:Ljava/util/Map;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$background:Z

    iput-object p5, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iput-object p6, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    iput-object p7, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    iput p8, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_retry:I

    iput-object p9, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 292
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_params:Ljava/util/Map;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$400(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 297
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$500(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$600(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    move-object v7, v6

    .line 300
    :goto_0
    new-instance p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_url:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5$1;-><init>(Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    goto :goto_1

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$background:Z

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    :cond_2
    const/4 v1, 0x0

    .line 333
    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;->val$_dataCallback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    const-string v6, "-10869601"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    :goto_1
    return-void
.end method
