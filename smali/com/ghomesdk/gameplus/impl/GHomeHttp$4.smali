.class final Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;
.super Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSign(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

.field final synthetic val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

.field final synthetic val$background:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 256
    iput-boolean p6, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$background:Z

    iput-object p7, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_context:Landroid/content/Context;

    iput-object p8, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iput-object p9, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    invoke-direct/range {p0 .. p5}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$background:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x0

    .line 278
    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    const/4 v5, 0x0

    const-string v6, "-10869601"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

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

    .line 259
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$background:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "code"

    .line 262
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    .line 263
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    const-string v1, ""

    invoke-static {p1, v1, p2, v0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$300(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    if-eqz v0, :cond_3

    const-string v1, "message"

    .line 267
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 270
    iget-object v4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;->val$_httpCallback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    const/4 v6, 0x0

    const-string v7, "-10869602"

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method
