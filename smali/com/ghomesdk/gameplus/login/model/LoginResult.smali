.class public Lcom/ghomesdk/gameplus/login/model/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field private canSkipBindPhone:Z

.field private hasBindPhone:Z

.field private hasExtendAcc:Z

.field private hasSetPassword:Z

.field private isExtendAccLogin:Z

.field private isNeedActive:Z

.field private isNeedBindPhone:Z

.field private isNeedSetPassword:Z

.field public realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedSetPassword:Z

    .line 17
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasSetPassword:Z

    .line 19
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive:Z

    .line 21
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isExtendAccLogin:Z

    .line 22
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasExtendAcc:Z

    .line 24
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone:Z

    .line 25
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->canSkipBindPhone:Z

    .line 26
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasBindPhone:Z

    .line 29
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    return-void
.end method

.method private isInHideDays(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-wide/16 v0, 0x0

    .line 60
    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gtz v5, :cond_0

    return v4

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/ghomesdk/gameplus/utils/TimeUtil;->diffDays(JJ)I

    move-result v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isCheckRefuse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "KEY_THIRD_BIND_PHONE_REFUSE_DAYS"

    .line 66
    invoke-static {p1, v1, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_1

    return v2

    .line 69
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_3

    return v2

    .line 75
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    return v4
.end method


# virtual methods
.method public cancelRealInfo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->cancelPayRealInfo()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->cancelRealInfo()V

    :goto_0
    return-void
.end method

.method public fillRealInfo()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->fillRealInfo()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedSetPassword:Z

    .line 33
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasSetPassword:Z

    .line 35
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive:Z

    .line 37
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isExtendAccLogin:Z

    .line 38
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasExtendAcc:Z

    .line 40
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone:Z

    .line 41
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasBindPhone:Z

    .line 42
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->canSkipBindPhone:Z

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->initData()V

    return-void
.end method

.method public isCanSkipBindPhone()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->canSkipBindPhone:Z

    return v0
.end method

.method public isForceForLogin()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceForLogin()Z

    move-result v0

    return v0
.end method

.method public isHasBindPhone()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasBindPhone:Z

    return v0
.end method

.method public isHasExtendAcc()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasExtendAcc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isExtendAccLogin:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedActive()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive:Z

    return v0
.end method

.method public isNeedBindPhone()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone:Z

    return v0
.end method

.method public isNeedSetPassword()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedSetPassword:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasSetPassword:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowForLogin()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->showForLogin()Z

    move-result v0

    return v0
.end method

.method public setCanSkipBindPhone(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->canSkipBindPhone:Z

    return-void
.end method

.method public setHasBindPhone(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasBindPhone:Z

    return-void
.end method

.method public setNeedActive(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive:Z

    return-void
.end method

.method public setNeedBindPhone(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone:Z

    return-void
.end method

.method public setPasswordSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasSetPassword:Z

    return-void
.end method

.method public setSetCancelRealInfo(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->setHasShowFullRealInfoForPay(Z)V

    return-void
.end method

.method public update(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 3

    .line 48
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNoPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedSetPassword:Z

    .line 49
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getActivation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive:Z

    .line 51
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getShow_bind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->canSkipBindPhone:Z

    .line 52
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getShow_bind()I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isInHideDays(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone:Z

    .line 54
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->updateRealInfo(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 56
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getHasExtendAccs()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->hasExtendAcc:Z

    return-void
.end method
