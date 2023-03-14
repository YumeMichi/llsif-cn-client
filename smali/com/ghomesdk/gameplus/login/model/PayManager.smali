.class public Lcom/ghomesdk/gameplus/login/model/PayManager;
.super Lcom/ghomesdk/gameplus/login/model/GuestManager;
.source "PayManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/login/LoginContext;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/GuestManager;-><init>(Lcom/ghomesdk/gameplus/login/LoginContext;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;)V

    const-string p1, "PayManager"

    .line 21
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private onPayRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->showForPay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    .line 121
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/RealInfoData;->isForceForPay()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const-string v2, "force"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12d

    .line 123
    invoke-virtual {p0, v1, p1, v0}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public doClickConfirmGuestUpgradeFinish(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginData;->setLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 96
    invoke-direct {p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onPayRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doClose state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x71

    .line 58
    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->state:I

    if-ne v0, v1, :cond_1

    .line 59
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    :cond_1
    const/16 v0, 0x69

    .line 62
    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->state:I

    if-ne v0, v1, :cond_2

    .line 63
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    .line 66
    :cond_2
    new-instance v7, Lcom/ghomesdk/gameplus/login/model/PayManager$1;

    invoke-direct {v7, p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager$1;-><init>(Lcom/ghomesdk/gameplus/login/model/PayManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    .line 72
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/PayManager$2;

    invoke-direct {v5, p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager$2;-><init>(Lcom/ghomesdk/gameplus/login/model/PayManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v7

    move-object v6, v7

    .line 78
    invoke-interface/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method

.method public doGuestCallback(ILcom/ghomesdk/gameplus/impl/object/LoginInfoModel;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGuestCallback code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 42
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginMethod:I

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, p1, p3}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p3, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public doPay(Lcom/ghomesdk/gameplus/login/model/RealInfoData;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->state:I

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->guestId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    .line 87
    invoke-direct {p0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onPayRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x71

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public getGuestId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->guestId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLoginDoneData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initJump()V
    .locals 5

    .line 33
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->initJump()V

    .line 34
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v2, "doClose"

    const/16 v3, 0x66

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v4, 0x69

    invoke-direct {v1, v4, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v4, 0x12d

    invoke-direct {v1, v4, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ghomesdk/gameplus/login/model/StatusCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallback status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    const-string p3, "0"

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    invoke-interface {p1, p3, v0, p2}, Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;->callback(ILcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
