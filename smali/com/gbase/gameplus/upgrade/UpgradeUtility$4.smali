.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$4;
.super Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
.source "UpgradeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownloadV2()V
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


# instance fields
.field final synthetic val$strDownloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$4;->val$strDownloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gbase/gameplus/upgradeutil/exception/HttpException;Ljava/lang/String;)V
    .locals 8

    .line 1363
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$4;->val$strDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setServerIP(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, "12"

    const-string v4, "99"

    const-string v5, "02"

    const-string v6, "04"

    invoke-virtual/range {v2 .. v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1365
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1502(Z)Z

    .line 1367
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download error ,Error["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "],Msg["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    return-void
.end method

.method public onLoading(JJZ)V
    .locals 2

    .line 1301
    invoke-static {p3, p4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1002(J)J

    .line 1303
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object p1

    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadChange(JJ)V

    .line 1304
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setDownloadSize(J)V

    .line 1305
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "downloadsize["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "],totalsize["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1310
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1302(J)J

    .line 1311
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "05"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1312
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1502(Z)Z

    .line 1313
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadStart()V

    return-void
.end method

.method public onStopped()V
    .locals 5

    .line 1318
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1300()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1602(J)J

    .line 1319
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1600()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1320
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "06"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1321
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1502(Z)Z

    .line 1322
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadCancel()V

    return-void
.end method

.method public onSuccess(Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1328
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_lCurrentDownloadSize :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1000()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "m_pakSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1329
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1000()J

    move-result-wide v0

    sget-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 1331
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "!!!!!!!! cuccess "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1332
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1300()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1602(J)J

    .line 1333
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1600()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1334
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "07"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1335
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1502(Z)Z

    .line 1337
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v1

    const-string v2, "download succeed"

    invoke-interface {v1, p1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1700()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1341
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1800(Z)V

    goto :goto_0

    .line 1342
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1700()I

    move-result p1

    if-nez p1, :cond_1

    .line 1344
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1800(Z)V

    .line 1346
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1902(Z)Z

    goto :goto_1

    .line 1348
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1900()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1350
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "!!!!!!!! size bu pipei , chongshi xiazai "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1351
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2000()V

    .line 1352
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1902(Z)Z

    goto :goto_1

    .line 1355
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string v0, "!!!!!! xia zai le hai shi bu xing  "

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1356
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u597d\u50cf\u6709\u70b9\u5c0f\u95ee\u9898\uff0c\u8bf7\u91cd\u542f\u8bd5\u8bd5~"

    invoke-interface {p1, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
