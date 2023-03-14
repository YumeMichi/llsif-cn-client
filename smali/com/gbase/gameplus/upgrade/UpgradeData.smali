.class public Lcom/gbase/gameplus/upgrade/UpgradeData;
.super Ljava/lang/Object;
.source "UpgradeData.java"


# instance fields
.field private downloadSize:J

.field private downloadUrl:Ljava/lang/String;

.field private fileSize:J

.field private forceUpdate:Ljava/lang/Integer;

.field private lastVersion:Ljava/lang/String;

.field private md5String:Ljava/lang/String;

.field private needUpdate:Ljava/lang/Integer;

.field private retCode:Ljava/lang/Integer;

.field private retDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadSize()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->fileSize:J

    return-wide v0
.end method

.method public getForceUpdate()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->forceUpdate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastVersion()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->lastVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->md5String:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedUpdate()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->needUpdate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->retCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetDesc()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->retDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadSize(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->downloadSize:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->fileSize:J

    return-void
.end method

.method public setForceUpdate(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->forceUpdate:Ljava/lang/Integer;

    return-void
.end method

.method public setLastVersion(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->lastVersion:Ljava/lang/String;

    return-void
.end method

.method public setMd5String(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->md5String:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->needUpdate:Ljava/lang/Integer;

    return-void
.end method

.method public setRetCode(Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->retCode:Ljava/lang/Integer;

    return-void
.end method

.method public setRetDesc(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpgradeData;->retDesc:Ljava/lang/String;

    return-void
.end method
