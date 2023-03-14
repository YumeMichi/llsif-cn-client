.class public Lcom/gbase/gameplus/upgrade/EventSubmit;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "EventSubmit.java"


# static fields
.field private static _instance:Lcom/gbase/gameplus/upgrade/EventSubmit;

.field private static m_bInitSubmitUrl:Z

.field private static m_strSubmitUrl:Ljava/lang/String;


# instance fields
.field private appContext:Landroid/content/Context;

.field eventSubmitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private lLastGetDeviceInfo:J

.field private mTime:J

.field private m_nAPILevel:I

.field private m_strManufacturer:Ljava/lang/String;

.field private m_strModel:Ljava/lang/String;

.field private m_strNetworkType:Ljava/lang/String;

.field private myLog:Lorg/apache/log4j/Logger;

.field private nSeqID:I

.field private startTime:J

.field private stopTime:J

.field private strAppID:Ljava/lang/String;

.field private strChannelID:Ljava/lang/String;

.field private strCurrentVersion:Ljava/lang/String;

.field private strDevideID:Ljava/lang/String;

.field private strHttpResCode:Ljava/lang/String;

.field private strPackageName:Ljava/lang/String;

.field private strServerIP:Ljava/lang/String;

.field private strSessionID:Ljava/lang/String;

.field private strTargetVersion:Ljava/lang/String;

.field private totalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 61
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->mTime:J

    .line 28
    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->startTime:J

    .line 29
    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->stopTime:J

    .line 30
    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->totalBytes:J

    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->myLog:Lorg/apache/log4j/Logger;

    .line 48
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->eventSubmitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v3, 0x0

    .line 62
    sput-boolean v3, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_bInitSubmitUrl:Z

    .line 63
    sput-object v2, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    .line 64
    iput v3, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_nAPILevel:I

    .line 65
    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->lLastGetDeviceInfo:J

    .line 66
    iput v3, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->nSeqID:I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strSessionID:Ljava/lang/String;

    return-void
.end method

.method private getAppInfo()Ljava/lang/String;
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 156
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;
    .locals 1

    .line 52
    sget-object v0, Lcom/gbase/gameplus/upgrade/EventSubmit;->_instance:Lcom/gbase/gameplus/upgrade/EventSubmit;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/gbase/gameplus/upgrade/EventSubmit;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/EventSubmit;->_instance:Lcom/gbase/gameplus/upgrade/EventSubmit;

    .line 57
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/EventSubmit;->_instance:Lcom/gbase/gameplus/upgrade/EventSubmit;

    return-object v0
.end method

.method private getNetworkType()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result v0

    const-string v1, ""

    .line 118
    iput-object v1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "WIFI"

    .line 122
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    const-string v0, "other"

    .line 125
    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->GetNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public GetNetworkOperator()Ljava/lang/String;
    .locals 14

    .line 167
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    const-string v1, "unknown"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "phone"

    .line 172
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 175
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "46005"

    const-string v4, "CTCC"

    const-string v5, "46003"

    const-string v6, "46006"

    const-string v7, "CUCC"

    const-string v8, "46001"

    const-string v9, "46007"

    const-string v10, "46002"

    const-string v11, "CMCC"

    const-string v12, "46000"

    if-nez v2, :cond_6

    const/4 v2, 0x5

    .line 178
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    if-ne v2, v13, :cond_9

    .line 180
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 187
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    :goto_0
    move-object v1, v4

    goto :goto_3

    :cond_4
    :goto_1
    move-object v1, v7

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, v11

    goto :goto_3

    .line 200
    :cond_6
    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 204
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 208
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_9

    goto :goto_0

    :catch_0
    :cond_9
    :goto_3
    return-object v1
.end method

.method public Init(Landroid/content/Context;)Z
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    .line 75
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strDevideID:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAPKCurrentVersion()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strCurrentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAPKTargetVersion()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strTargetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->myLog:Lorg/apache/log4j/Logger;

    if-nez v0, :cond_0

    .line 83
    const-class v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->myLog:Lorg/apache/log4j/Logger;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->myLog:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public getStrAppID()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getStrChannelID()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public getStrHttpResCode()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strHttpResCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSessionID()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public isRoot()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    .line 404
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 261
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 262
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 263
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 264
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->mTime:J

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->updateEventInfo()V

    .line 270
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "apilevel"

    .line 274
    iget v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_nAPILevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uuid"

    .line 277
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->strDevideID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "networktype"

    .line 280
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v4, "android"

    .line 283
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "root"

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->isRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packagename"

    .line 289
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->strPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device"

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strManufacturer:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strModel:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "projectid"

    .line 298
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->strAppID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dversion"

    const-string v4, "1"

    .line 301
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionid"

    .line 304
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->strSessionID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sequence"

    .line 307
    new-instance v4, Ljava/lang/Integer;

    iget v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->nSeqID:I

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    const-string v4, "3.7.1.2"

    .line 310
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "apkcversion"

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getAPKCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelid"

    .line 316
    iget-object v4, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->strChannelID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mtime"

    .line 319
    iget-wide v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->mTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x4

    const/16 v4, 0xc

    const/4 v9, 0x2

    if-ne v5, v4, :cond_0

    if-ne v6, v9, :cond_0

    if-nez v7, :cond_0

    if-ne v8, v0, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->startTime:J

    :cond_0
    const/4 v10, 0x7

    if-ne v5, v4, :cond_2

    if-ne v6, v9, :cond_2

    if-nez v7, :cond_2

    const/4 v11, 0x6

    if-eq v8, v11, :cond_1

    if-ne v8, v10, :cond_2

    .line 330
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->stopTime:J

    .line 331
    iget-wide v11, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->startTime:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    iget-wide v11, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->stopTime:J

    iget-wide v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->startTime:J

    cmp-long v15, v11, v9

    if-lez v15, :cond_2

    .line 333
    iget-wide v9, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->stopTime:J

    iget-wide v11, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->startTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    cmp-long v11, v9, v13

    if-lez v11, :cond_2

    const-string v11, "totaltime"

    .line 336
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "totalbytes"

    .line 337
    iget-wide v10, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->totalBytes:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-ne v5, v4, :cond_3

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    if-nez v7, :cond_3

    if-lt v8, v0, :cond_3

    const/4 v9, 0x7

    if-gt v8, v9, :cond_3

    const-string v9, "apktversion"

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getAPKTargetVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const/16 v9, 0x63

    if-ne v5, v4, :cond_4

    if-ne v6, v9, :cond_4

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    if-lt v8, v10, :cond_4

    if-gt v8, v0, :cond_4

    const-string v0, "serverip"

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getServerIP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-ne v5, v4, :cond_5

    if-ne v6, v9, :cond_5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    const/4 v0, 0x3

    if-ne v8, v0, :cond_5

    const-string v0, "httpresponse"

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getStrHttpResCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :cond_5
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "msg"

    move-object/from16 v4, p5

    .line 360
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get EventSubmit info json error:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 369
    :cond_6
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit Code == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 374
    sget-boolean v3, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_bInitSubmitUrl:Z

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 376
    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    sput-object v3, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    .line 377
    sget-object v3, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    const-string v3, "http://bu-cr-dataclt.gbase.sdo.com:8080/launchersubmit/eventInfoSubmit"

    .line 379
    sput-object v3, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    .line 381
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submit url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 382
    sput-boolean v4, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_bInitSubmitUrl:Z

    .line 394
    :cond_9
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->getInstance()Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    move-result-object v3

    sget-object v5, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strSubmitUrl:Ljava/lang/String;

    invoke-virtual {v3, v5, v2, v0}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->sendSubmitAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget v0, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->nSeqID:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/gbase/gameplus/upgrade/EventSubmit;->nSeqID:I

    return-void
.end method

.method public setAPKCurrentVersion(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strCurrentVersion:Ljava/lang/String;

    return-void
.end method

.method public setAPKTargetVersion(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strTargetVersion:Ljava/lang/String;

    return-void
.end method

.method public setDownloadBytes(J)V
    .locals 0

    .line 427
    iput-wide p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->totalBytes:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strPackageName:Ljava/lang/String;

    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strServerIP:Ljava/lang/String;

    return-void
.end method

.method public setStrAppID(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strAppID:Ljava/lang/String;

    return-void
.end method

.method public setStrChannelID(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strChannelID:Ljava/lang/String;

    return-void
.end method

.method public setStrHttpResCode(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strHttpResCode:Ljava/lang/String;

    return-void
.end method

.method public setStrSessionID(Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->strSessionID:Ljava/lang/String;

    return-void
.end method

.method public updateEventInfo()V
    .locals 5

    .line 224
    iget-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->lLastGetDeviceInfo:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strManufacturer:Ljava/lang/String;

    .line 229
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_strModel:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result v0

    iput v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->m_nAPILevel:I

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgrade/EventSubmit;->lLastGetDeviceInfo:J

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getNetworkType()V

    return-void
.end method
