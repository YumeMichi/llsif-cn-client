.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$5;
.super Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
.source "UpgradeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownloadV1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1398
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gbase/gameplus/upgradeutil/exception/HttpException;Ljava/lang/String;)V
    .locals 7

    .line 1453
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "12"

    const-string v2, "99"

    const-string v3, "02"

    const-string v4, "04"

    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1455
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2102(Z)Z

    .line 1457
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download error ,Error["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "],Msg["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    return-void
.end method

.method public onLoading(JJZ)V
    .locals 4

    .line 1402
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object p5

    invoke-virtual {p5, p3, p4}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setDownloadSize(J)V

    .line 1403
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object p5

    .line 1404
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadSize()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 1405
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getFileSize()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v2, v3

    .line 1403
    invoke-interface {p5, v0, v1, v2, v3}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadChange(JJ)V

    .line 1406
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadsize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "],totalsize["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1412
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "05"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1414
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2102(Z)Z

    .line 1415
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadStart()V

    return-void
.end method

.method public onStopped()V
    .locals 5

    .line 1420
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2202(J)J

    .line 1421
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2200()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1422
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "06"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1424
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2102(Z)Z

    .line 1425
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadCancel()V

    return-void
.end method

.method public onSuccess(Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1432
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1400()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2202(J)J

    .line 1433
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p1

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2200()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1434
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p1

    const-string v0, "12"

    const-string v1, "02"

    const-string v2, "00"

    const-string v3, "07"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1436
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2102(Z)Z

    .line 1438
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "download succeed"

    invoke-interface {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    .line 1440
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2300()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1442
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1800(Z)V

    goto :goto_0

    .line 1443
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2300()I

    move-result v0

    if-nez v0, :cond_1

    .line 1445
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1800(Z)V

    :cond_1
    :goto_0
    return-void
.end method
