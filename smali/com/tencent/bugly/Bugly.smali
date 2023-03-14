.class public Lcom/tencent/bugly/Bugly;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "Bugly.java"


# static fields
.field private static m_areaID:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 25
    sput-object p0, Lcom/tencent/bugly/Bugly;->m_context:Landroid/content/Context;

    .line 28
    :try_start_0
    sget-object p0, Lcom/tencent/bugly/Bugly;->m_context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object p1, Lcom/tencent/bugly/Bugly;->m_context:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    .line 34
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "AREA_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/Bugly;->m_areaID:Ljava/lang/String;

    .line 35
    sget-object p0, Lcom/tencent/bugly/Bugly;->m_context:Landroid/content/Context;

    sget-object p1, Lcom/tencent/bugly/Bugly;->m_areaID:Ljava/lang/String;

    const/16 p2, 0x1e

    invoke-static {p0, p1, p2}, Lcom/gbase/gameplus/upgrade/ApkUpdateByVerCtrlWithUIInterface;->GApkUpdateByVerCtrlWithUI(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
