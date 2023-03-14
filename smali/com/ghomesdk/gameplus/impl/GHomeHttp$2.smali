.class final Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;
.super Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 178
    iput-object p4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_context:Landroid/content/Context;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iput-object p6, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

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

    .line 188
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x0

    .line 191
    iget-object v3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    const/4 v5, 0x0

    const-string v6, "-10869601"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    return-void
.end method

.method protected onSuccess(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 181
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_objectCallback:Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$100(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method
