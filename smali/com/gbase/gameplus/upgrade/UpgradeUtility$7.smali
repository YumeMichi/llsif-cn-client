.class final Lcom/gbase/gameplus/upgrade/UpgradeUtility$7;
.super Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
.source "UpgradeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
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

    .line 1699
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gbase/gameplus/upgradeutil/exception/HttpException;Ljava/lang/String;)V
    .locals 6

    .line 1777
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

    .line 1778
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

    .line 1779
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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "size"

    const-string v1, "99"

    const-string v2, "02"

    const-string v3, "12"

    const-string v4, "]"

    .line 1703
    :try_start_0
    iget v5, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    const/16 v6, 0xc8

    const/4 v7, 0x3

    if-ne v5, v6, :cond_5

    .line 1704
    iget-object v5, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1705
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1707
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1708
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v8, "rcode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetCode(Ljava/lang/Integer;)V

    .line 1709
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    const-string v8, "rdesc"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetDesc(Ljava/lang/String;)V

    .line 1711
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrHttpResCode(Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "03"

    if-nez v5, :cond_4

    :try_start_1
    const-string v5, "data"

    .line 1714
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1715
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    const-string v7, "needUpdate"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setNeedUpdate(Ljava/lang/Integer;)V

    .line 1716
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    const-string v7, "isForce"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setForceUpdate(Ljava/lang/Integer;)V

    .line 1717
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    const-string v7, "latestVersion"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setLastVersion(Ljava/lang/String;)V

    .line 1718
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    const-string v7, "downloadUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setDownloadUrl(Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    const-string v7, "md5"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setMd5String(Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v6

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getLastVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    .line 1723
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getNeedUpdate()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v9, 0x0

    const-string v7, "00"

    if-nez v6, :cond_0

    .line 1726
    :try_start_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v7, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 1729
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v5, "getUpdateInfoASync : return 0:[No Update]"

    invoke-virtual {v0, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1730
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v5, 0x0

    const-string v6, "No Upgrade"

    invoke-interface {v0, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1734
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v6

    const-string v8, "04"

    invoke-virtual {v6, v3, v2, v7, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 1737
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$2400()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority(Landroid/content/Context;)Z

    move-result v6

    .line 1738
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    if-nez v6, :cond_1

    goto/16 :goto_0

    .line 1742
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getForceUpdate()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1743
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v5, "getUpdateInfoASync : return 2:[Not Force Update]"

    invoke-virtual {v0, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1744
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Force Update: download url:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1745
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v5, 0x2

    const-string v6, "Optional Upgrade "

    invoke-interface {v0, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1748
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v6

    const-string v7, "getUpdateInfoASync : return 1:[Force Update]"

    invoke-virtual {v6, v7}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1749
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Force Update: download url:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1750
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v6

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Forced Upgrade"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1739
    :cond_3
    :goto_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v5, 0x7

    const-string v6, "SDCard Not Available"

    invoke-interface {v0, v5, v6}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1756
    :cond_4
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateInfoASync : return 3:[Upgrade Interface return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1758
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON Result code Error:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1762
    :cond_5
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v8

    const-string v9, "12"

    const-string v10, "99"

    const-string v11, "02"

    const-string v12, "01"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpStatusCodeError:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateInfoASync : return 3:[Http Status Code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1764
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Http Status code Error:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1768
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v3, v1, v2, v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateInfoASync : return 5:[Error Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 1770
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async JSON Format Error:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method
