.class public Lcom/gbase/gameplus/upgrade/ApkUpdateWithUIInterface;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "ApkUpdateWithUIInterface.java"


# static fields
.field private static upgradeutility:Lcom/gbase/gameplus/upgrade/UpgradeUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/ApkUpdateWithUIInterface;->upgradeutility:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    return-void
.end method

.method public static GApkUpdateWithUI(Landroid/content/Context;I)V
    .locals 1

    .line 12
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setMobileDownloadMaxValue(I)V

    .line 13
    sget-object v0, Lcom/gbase/gameplus/upgrade/ApkUpdateWithUIInterface;->upgradeutility:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->GApkUpdate(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setUpgradeCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;->setCustomCallback(Lcom/gbase/gameplus/upgrade/GApkUpdateCustomCallback;)V

    return-void
.end method
