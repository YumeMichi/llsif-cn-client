.class public Lcom/gbase/gameplus/upgrade/GApkUpdateInterface;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "GApkUpdateInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    return-void
.end method

.method public static checkForUpdates(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeAsync(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method

.method public static checkNetworkStatus(Landroid/content/Context;Z)I
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkNetworkStatus(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->setMainActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method

.method public static stopUpdate()V
    .locals 0

    .line 59
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->stopUpdate()V

    return-void
.end method

.method public static updateWithUI(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/gbase/gameplus/upgrade/ApkUpdateByVerCtrlWithUIInterface;->GApkUpdateByVerCtrlWithUI(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
