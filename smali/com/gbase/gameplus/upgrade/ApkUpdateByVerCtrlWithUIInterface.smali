.class public Lcom/gbase/gameplus/upgrade/ApkUpdateByVerCtrlWithUIInterface;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "ApkUpdateByVerCtrlWithUIInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    return-void
.end method

.method public static GApkUpdateByVerCtrlWithUI(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-static {p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setMobileDownloadMaxValue(I)V

    .line 10
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getInstance()Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-static {p0, p1, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->GApkUpdate(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUpgradeByVerCtrlCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V

    return-void
.end method
