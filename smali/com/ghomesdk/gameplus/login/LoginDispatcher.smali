.class public Lcom/ghomesdk/gameplus/login/LoginDispatcher;
.super Ljava/lang/Object;
.source "LoginDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginDispatcher"


# instance fields
.field protected loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field protected manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 27
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    return-void
.end method


# virtual methods
.method public doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doBack(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doBack(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCancel(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doCancel(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 11

    move-object v0, p0

    .line 120
    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickCancelFillRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickCancelFillRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickConfirmGuestUpgradeFinish(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    instance-of v1, v0, Lcom/ghomesdk/gameplus/login/model/GuestManager;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickConfirmGuestUpgradeFinish(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :cond_0
    return-void
.end method

.method public doClickForgetPassword(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickForgetPassword(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickGuestUpgrade(Landroid/content/Context;ZLjava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getGuestId()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 157
    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 161
    new-instance v1, Lcom/ghomesdk/gameplus/login/model/GuestManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v2

    new-instance v3, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;

    invoke-direct {v3, p0, v0, p2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;-><init>(Lcom/ghomesdk/gameplus/login/LoginDispatcher;Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V

    invoke-direct {v1, v2, p3, p4, v3}, Lcom/ghomesdk/gameplus/login/model/GuestManager;-><init>(Lcom/ghomesdk/gameplus/login/LoginContext;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;)V

    .line 168
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->init(Landroid/content/Context;)V

    .line 169
    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 170
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {p1, p5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickPayGuestUpgrade(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickPwdLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickPwdLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickSmsLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickSmsLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCloseWindow(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doCloseView(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doFillRealName(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doFillRealName(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doGameGuestUpgrade(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 44
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v4, v0

    .line 46
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->init()V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestUpgrade(Landroid/content/Context;ZLjava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doLogout(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doLogout(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doOtherLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doOtherLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doPay(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 4

    .line 51
    iget-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getGuestId()Ljava/lang/String;

    move-result-object p4

    .line 52
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 54
    :goto_0
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p4, v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 58
    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PayManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v2

    new-instance v3, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;

    invoke-direct {v3, p0, v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginDispatcher;Lcom/ghomesdk/gameplus/login/model/LoginManager;)V

    invoke-direct {v1, v2, p4, p2, v3}, Lcom/ghomesdk/gameplus/login/model/PayManager;-><init>(Lcom/ghomesdk/gameplus/login/LoginContext;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/login/model/PayManager;->initNoInitRealInfoData(Landroid/content/Context;)V

    .line 67
    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 68
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getRealInfoData()Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Lcom/ghomesdk/gameplus/login/model/PayManager;->doPay(Lcom/ghomesdk/gameplus/login/model/RealInfoData;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickLoginRemove(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doQuickLoginRemove(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doResetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doResetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doStart(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doStart(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdFillRealBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doThirdFillRealBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->init(Landroid/content/Context;)V

    .line 32
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    return-void
.end method

.method public isActivate()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->isActivate()Z

    move-result v0

    return v0
.end method

.method public isBindPhone()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->isBindPhone()Z

    move-result v0

    return v0
.end method

.method public isFillRealInfo()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->isFillRealInfo()Z

    move-result v0

    return v0
.end method

.method public isGuestProcess()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    instance-of v0, v0, Lcom/ghomesdk/gameplus/login/model/GuestManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPayProcess()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    instance-of v0, v0, Lcom/ghomesdk/gameplus/login/model/PayManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGuestEnable(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 245
    sput-boolean p1, Lcom/ghomesdk/gameplus/config/Config;->GUEST_ENABLE:Z

    return-void
.end method
