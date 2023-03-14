.class public Lcom/tencent/bugly/beta/Beta;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "Beta.java"


# static fields
.field public static autoCheckUpgrade:Z

.field public static autoInit:Z

.field public static canShowApkInfo:Z

.field private static m_areaID:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    return-void
.end method

.method public static checkUpgrade()V
    .locals 3

    .line 80
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/tencent/bugly/beta/Beta;->m_areaID:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/ApkUpdateByVerCtrlWithUIInterface;->GApkUpdateByVerCtrlWithUI(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkUpgrade(ZZ)V
    .locals 0

    return-void
.end method

.method public static getUpgradeInfo()Lcom/tencent/bugly/beta/UpgradeInfo;
    .locals 1

    .line 101
    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>()V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 4

    .line 41
    sput-object p0, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    .line 42
    sget-boolean p0, Lcom/tencent/bugly/beta/Beta;->autoInit:Z

    const/16 v0, 0x80

    const-string v1, "AREA_ID"

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    sget-object p0, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v2

    .line 52
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/beta/Beta;->m_areaID:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    .line 57
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 63
    :goto_1
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/beta/Beta;->m_areaID:Ljava/lang/String;

    .line 65
    :cond_1
    sget-boolean p0, Lcom/tencent/bugly/beta/Beta;->autoCheckUpgrade:Z

    if-eqz p0, :cond_2

    .line 67
    sget-object p0, Lcom/tencent/bugly/beta/Beta;->m_context:Landroid/content/Context;

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->m_areaID:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {p0, p1, v0}, Lcom/gbase/gameplus/upgrade/ApkUpdateByVerCtrlWithUIInterface;->GApkUpdateByVerCtrlWithUI(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->setMainActivity(Landroid/app/Activity;)V

    return-void
.end method
