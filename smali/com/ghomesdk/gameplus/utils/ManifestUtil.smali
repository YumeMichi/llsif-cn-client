.class public Lcom/ghomesdk/gameplus/utils/ManifestUtil;
.super Ljava/lang/Object;
.source "ManifestUtil.java"


# static fields
.field static TAG:Ljava/lang/String; = "ManifestUtil"

.field public static marketCode:Ljava/lang/String;

.field public static superChannelCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApkVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationChannel()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "APPLICATION_CHANNEL"

    .line 80
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    .line 81
    sget-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "A1"

    .line 82
    sput-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    .line 85
    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    return-object p0
.end method

.method public static getApplicationSuperChannel()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "APPLICATION_SUPER_CHANNEL"

    .line 90
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    .line 95
    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    return-object p0
.end method

.method public static getMarketCode()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMarketCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 51
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 52
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static initMarketCode(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    sget-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestUtil.initMarketCode finish -> superChannelCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->superChannelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", marketCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
