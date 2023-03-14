.class public Lcom/ghomesdk/gameplus/login/model/RealInfoData;
.super Ljava/lang/Object;
.source "RealInfoData.java"


# instance fields
.field private hasFullRealInfo:Z

.field private hasShowFullRealInfo:Z

.field private hasShowFullRealInfoForPay:Z

.field private isForceFullRealInfo:Z

.field private isNeedFullReadInfo:Z

.field private isPayForceFullRealInfo:Z

.field private isPayNeedFullReadInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isNeedFullReadInfo:Z

    .line 11
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceFullRealInfo:Z

    .line 12
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayNeedFullReadInfo:Z

    .line 13
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayForceFullRealInfo:Z

    .line 15
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfo:Z

    .line 16
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfoForPay:Z

    .line 17
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasFullRealInfo:Z

    .line 20
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->initData()V

    return-void
.end method


# virtual methods
.method public cancelPayRealInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfoForPay:Z

    return-void
.end method

.method public cancelRealInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfo:Z

    return-void
.end method

.method public fillRealInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasFullRealInfo:Z

    return-void
.end method

.method public initData()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isNeedFullReadInfo:Z

    .line 25
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceFullRealInfo:Z

    .line 26
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayNeedFullReadInfo:Z

    .line 27
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayForceFullRealInfo:Z

    .line 28
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasFullRealInfo:Z

    .line 29
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfo:Z

    return-void
.end method

.method public isForceForLogin()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceFullRealInfo:Z

    return v0
.end method

.method public isForceForPay()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayForceFullRealInfo:Z

    return v0
.end method

.method public setHasShowFullRealInfoForPay(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfoForPay:Z

    return-void
.end method

.method public showForLogin()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isNeedFullReadInfo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasFullRealInfo:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showForPay()Z
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasShowFullRealInfoForPay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->hasFullRealInfo:Z

    if-eqz v0, :cond_1

    return v1

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayNeedFullReadInfo:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayForceFullRealInfo:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public updateRealInfo(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getHas_realInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getRealInfo_status()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isNeedFullReadInfo:Z

    .line 35
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getRealInfo_force()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceFullRealInfo:Z

    .line 36
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getRealInfo_status_pay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayNeedFullReadInfo:Z

    .line 37
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getRealInfo_force_pay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isPayForceFullRealInfo:Z

    :cond_0
    return-void
.end method
