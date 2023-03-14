.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;
.super Ljava/lang/Object;
.source "UpgradeUtility.java"

# interfaces
.implements Lgbase_okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(ILcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$okHttpHandler:Landroid/os/Handler;

.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1942
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$strUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 1946
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p1

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$strUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setServerIP(Ljava/lang/String;)V

    .line 1947
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "12"

    const-string v3, "99"

    const-string v4, "02"

    const-string v5, "02"

    invoke-virtual/range {v1 .. v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateInfoAsync onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1949
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$1;

    invoke-direct {v0, p0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$1;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
    .locals 6

    .line 1961
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->code()I

    move-result p1

    .line 1962
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lgbase_okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1968
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2500(Lorg/json/JSONObject;)I

    move-result p1

    .line 1969
    iget-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$2;

    invoke-direct {v0, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$2;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2010
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "99"

    const-string v3, "02"

    const-string v4, "01"

    const-string v5, "getUpdateInfoAsync response body IOException"

    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateInfoAsync response body IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 2012
    iget-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$4;

    invoke-direct {v0, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$4;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;Ljava/io/IOException;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception p1

    .line 1998
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "99"

    const-string v3, "02"

    const-string v4, "01"

    const-string v5, "getUpdateInfoAsync JSONException"

    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateInfoAsync JSONException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 2000
    iget-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$3;

    invoke-direct {v0, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$3;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;Lorg/json/JSONException;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2023
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p2

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$strUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setServerIP(Ljava/lang/String;)V

    .line 2024
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrHttpResCode(Ljava/lang/String;)V

    .line 2025
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p2

    const-string v0, "12"

    const-string v1, "99"

    const-string v2, "02"

    const-string v3, "03"

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateInfoAsync response bad code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 2027
    iget-object p2, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;->val$okHttpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$5;

    invoke-direct {v0, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9$5;-><init>(Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
