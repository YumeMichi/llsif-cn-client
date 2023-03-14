.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$6;
.super Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
.source "UpgradeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1576
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gbase/gameplus/upgradeutil/exception/HttpException;Ljava/lang/String;)V
    .locals 6

    .line 1654
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "12"

    const-string v2, "99"

    const-string v3, "02"

    const-string v4, "01"

    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoASync : return 4:[HttpException Msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1656
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http Error:[HttpException Msg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getExceptionCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {v0, p2, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "99"

    const-string v1, "02"

    const-string v2, "12"

    const-string v3, "]"

    .line 1580
    :try_start_0
    iget v4, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    const/16 v5, 0xc8

    const/4 v6, 0x3

    if-ne v4, v5, :cond_5

    .line 1581
    iget-object v4, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1582
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1584
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v4

    const-string v7, "rcode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetCode(Ljava/lang/Integer;)V

    .line 1586
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v4

    const-string v7, "rdesc"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetDesc(Ljava/lang/String;)V

    .line 1588
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrHttpResCode(Ljava/lang/String;)V

    .line 1590
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "03"

    if-nez v4, :cond_4

    :try_start_1
    const-string v4, "data"

    .line 1591
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1592
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "needUpdate"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setNeedUpdate(Ljava/lang/Integer;)V

    .line 1593
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "isForce"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setForceUpdate(Ljava/lang/Integer;)V

    .line 1594
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "latestVersion"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setLastVersion(Ljava/lang/String;)V

    .line 1595
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "downloadUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setDownloadUrl(Ljava/lang/String;)V

    .line 1596
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "md5"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setMd5String(Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getLastVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    .line 1600
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getNeedUpdate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v8, 0x0

    const-string v6, "00"

    if-nez v5, :cond_0

    .line 1603
    :try_start_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v6, v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 1606
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    const-string v5, "getUpdateInfoASync : return 0:[No Update]"

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1607
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "No Upgrade"

    invoke-interface {v4, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1611
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    const-string v7, "04"

    invoke-virtual {v5, v2, v1, v6, v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 1614
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2400()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority(Landroid/content/Context;)Z

    move-result v4

    .line 1615
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-lez v7, :cond_3

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 1619
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getForceUpdate()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 1620
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    const-string v5, "getUpdateInfoASync : return 2:[Not Force Update]"

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1621
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Force Update: download url:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1622
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "Optional Upgrade "

    invoke-interface {v4, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1625
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    const-string v5, "getUpdateInfoASync : return 1:[Force Update]"

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1626
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force Update: download url:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1627
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "Forced Upgrade"

    invoke-interface {v4, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1616
    :cond_3
    :goto_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    const/4 v5, 0x7

    const-string v6, "SDCard Not Available"

    invoke-interface {v4, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1633
    :cond_4
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v1, v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpdateInfoASync : return 3:[Upgrade Interface return:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1635
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON Result code Error:["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1639
    :cond_5
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v7

    const-string v8, "12"

    const-string v9, "99"

    const-string v10, "02"

    const-string v11, "01"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpStatusCodeError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpdateInfoASync : return 3:[Http Status Code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1641
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http Status code Error:["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v4

    .line 1645
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v2, v0, v1, v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoASync : return 5:[Error Msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1647
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async JSON Format Error:["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method
