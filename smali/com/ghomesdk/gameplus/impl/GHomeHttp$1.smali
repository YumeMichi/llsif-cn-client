.class final Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;
.super Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;
.source "GHomeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/GHomeHttp;->download(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 77
    iput-object p3, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected onFailure(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "download failure!!!!!!!!!!!"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 91
    invoke-interface {p2, p1, v1, v0}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
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

    .line 81
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "download success!!!!!!!!!!!"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/HttpCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, ""

    .line 83
    invoke-interface {p1, p2, v1, v0}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
