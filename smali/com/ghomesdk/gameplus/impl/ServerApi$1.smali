.class final Lcom/ghomesdk/gameplus/impl/ServerApi$1;
.super Ljava/lang/Object;
.source "ServerApi.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi;->activate(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_tag:Ljava/lang/Object;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/lang/Object;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_context:Landroid/content/Context;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    if-eqz p1, :cond_1

    .line 67
    invoke-interface {p1, p3}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServerApi"

    const-string p2, "activate device, upload deviceinfo again"

    .line 69
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getActiveUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$params:Ljava/util/Map;

    const/4 v5, 0x0

    new-instance v6, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;-><init>(Lcom/ghomesdk/gameplus/impl/ServerApi$1;)V

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
