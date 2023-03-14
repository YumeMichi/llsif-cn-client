.class public Lcom/ghomesdk/gameplus/login/model/GuestManager;
.super Lcom/ghomesdk/gameplus/login/model/LoginManager;
.source "GuestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "GuestManager"


# instance fields
.field protected cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

.field private confirmUpgrade:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

.field protected guestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ghomesdk/gameplus/login/LoginContext;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->guestId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    .line 28
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->confirmUpgrade:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    .line 35
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    .line 36
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->guestId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->confirmUpgrade:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    .line 38
    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onAuthSuccess(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onPwdLoginCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/model/GuestManager;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->confirmUpgrade:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->tryGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method private onAuthSuccess(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    const-string v0, "GuestManager"

    const-string v1, "onAuthSuccess"

    .line 182
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->tryGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method private onPwdLoginCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 10

    move-object v7, p0

    move-object v0, p2

    move-object v2, p3

    move-object/from16 v1, p7

    const-string v3, "8"

    if-eqz v1, :cond_6

    .line 154
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 155
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getImagecodeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_5

    .line 156
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getImagecodeType()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v8, 0x31

    const/4 v9, 0x1

    if-eq v6, v8, :cond_1

    const/16 v8, 0x32

    if-eq v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_0
    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    goto/16 :goto_1

    .line 161
    :cond_3
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSdg_width()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSdg_height()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    move-object v0, p2

    move-object v1, v3

    move-object v2, p3

    move-object v3, v4

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showQuickValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, p3, v1, v4}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, p3, v1, v4}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz p5, :cond_8

    .line 168
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_7

    .line 169
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "checkCodeGuid"

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual/range {p7 .. p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkCodeUrl"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onPwdLoginFailedCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 175
    :cond_8
    invoke-virtual {v1, p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 176
    iget-object v0, v7, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-object v0, p4

    .line 177
    invoke-direct {p0, p4}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onAuthSuccess(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_1
    return-void
.end method

.method private tryGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    const-string v0, "GuestManager"

    const-string v1, "tryGuestUpgrade"

    .line 218
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getTicket()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->guestId:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    invoke-direct {v7, p0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/ServerApi;->guestUpgrade(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method


# virtual methods
.method protected checkCodePwdLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 99
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/GuestManager$3;

    invoke-direct {v5, p0, p4, p8}, Lcom/ghomesdk/gameplus/login/model/GuestManager$3;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->checkCodeAuth(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doCancel(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    return-void
.end method

.method public doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getTicket()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->guestId:Ljava/lang/String;

    new-instance v6, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;

    invoke-direct {v6, p0, p3, p5, p4}, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->guestUpgrade(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doClickConfirmGuestUpgradeFinish(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    if-eqz p1, :cond_0

    const-string v0, "0"

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    invoke-interface {p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;->callback(ILcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    :cond_0
    return-void
.end method

.method public doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 88
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p5, p6, v6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->pwdAuth(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getTicket()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;

    invoke-direct {v1, p0, p4}, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, v0, p3, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->setPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 65
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;

    invoke-direct {v5, p0, p6, p3, p5}, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->smsAuth(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method protected initJump()V
    .locals 5

    .line 110
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initJump()V

    .line 111
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v2, "doClose"

    const/16 v3, 0x66

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v4, 0x65

    invoke-direct {v1, v4, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v2, "doBack"

    invoke-direct {v1, v4, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 4

    const-string v0, "GuestManager"

    const-string v1, "onJumpCancel 1"

    .line 130
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    if-eqz v1, :cond_0

    const-string v2, "-100"

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;->callback(ILcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const-string p1, "onJumpCancel 2"

    .line 133
    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object v3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager;->cbGuest:Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;

    :cond_0
    return-void
.end method

.method protected onJumpInit()V
    .locals 0

    return-void
.end method

.method protected onStartPage(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    const/16 p1, 0x65

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method
