.class public Lcom/gbase/gameplus/upgrade/UpdateServiceRet;
.super Ljava/lang/Object;
.source "UpdateServiceRet.java"


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private forceUpdate:Ljava/lang/Integer;

.field private lastVersion:Ljava/lang/String;

.field private md5String:Ljava/lang/String;

.field private needUpdate:Ljava/lang/Integer;

.field private retCode:Ljava/lang/Integer;

.field private retDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdate()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->forceUpdate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->lastVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5String()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->md5String:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedUpdate()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->needUpdate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->retCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetDesc()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->retDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdate(Ljava/lang/Integer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->forceUpdate:Ljava/lang/Integer;

    return-void
.end method

.method public setLastVersion(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->lastVersion:Ljava/lang/String;

    return-void
.end method

.method public setMd5String(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->md5String:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->needUpdate:Ljava/lang/Integer;

    return-void
.end method

.method public setRetCode(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->retCode:Ljava/lang/Integer;

    return-void
.end method

.method public setRetDesc(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/gbase/gameplus/upgrade/UpdateServiceRet;->retDesc:Ljava/lang/String;

    return-void
.end method
