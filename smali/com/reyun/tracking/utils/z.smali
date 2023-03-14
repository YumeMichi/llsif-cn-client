.class Lcom/reyun/tracking/utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/p;


# instance fields
.field final synthetic a:Lcom/reyun/tracking/utils/y;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/utils/y;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/z;->a:Lcom/reyun/tracking/utils/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2

    :try_start_0
    check-cast p2, Lorg/json/JSONObject;

    const-string p1, "info"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "dp_url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dp_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p1}, Lcom/reyun/tracking/utils/IDeepLinkListener;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/reyun/tracking/utils/IDeepLinkListener;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string p1, "Tracking"

    const-string p2, "Upload dp query failed!"

    invoke-static {p1, p2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/reyun/tracking/utils/IDeepLinkListener;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
