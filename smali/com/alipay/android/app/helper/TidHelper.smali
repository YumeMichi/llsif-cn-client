.class public Lcom/alipay/android/app/helper/TidHelper;
.super Lcom/alipay/sdk/tid/TidHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/tid/TidHelper;-><init>()V

    return-void
.end method

.method public static clearTID(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->clearTID(Landroid/content/Context;)V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getTIDValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->getTIDValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVirtualImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->getVirtualImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadLocalTid(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadLocalTid(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/android/app/helper/Tid;->fromRealTidModel(Lcom/alipay/sdk/tid/Tid;)Lcom/alipay/android/app/helper/Tid;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 1

    const-class v0, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/android/app/helper/Tid;->fromRealTidModel(Lcom/alipay/sdk/tid/Tid;)Lcom/alipay/android/app/helper/Tid;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/android/app/helper/Tid;->fromRealTidModel(Lcom/alipay/sdk/tid/Tid;)Lcom/alipay/android/app/helper/Tid;

    move-result-object p0

    return-object p0
.end method

.method public static resetTID(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->resetTID(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
