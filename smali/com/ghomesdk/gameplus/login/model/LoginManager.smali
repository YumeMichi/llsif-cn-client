.class public Lcom/ghomesdk/gameplus/login/model/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "LoginManager"


# instance fields
.field protected context:Landroid/content/Context;

.field protected loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

.field protected loginMethod:I

.field protected mapJump:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ghomesdk/gameplus/login/model/PairKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    .line 43
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 44
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginContext;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/LoginContext;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onPwdLoginCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->setPasswordBack(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->tryAutoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method private checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 10

    .line 219
    new-instance v8, Lcom/ghomesdk/gameplus/login/model/LoginManager$4;

    move-object v9, p0

    move-object/from16 v0, p9

    invoke-direct {v8, p0, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager$4;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/ghomesdk/gameplus/impl/ServerApi;->checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method private doBackExtend(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 3

    .line 134
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/16 v0, 0x67

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJumpInit()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method private initData()V
    .locals 1

    const/4 v0, 0x0

    .line 881
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    .line 883
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->init()V

    return-void
.end method

.method private onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 837
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isShowForLogin()Z

    move-result v1

    const-string v2, "LoginManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isCanSkipBindPhone()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLoginContinue->LoginStatus.LOGIN_REALINFO_BIND_PHONE"

    .line 839
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x74

    goto/16 :goto_3

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedSetPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onLoginContinue->loginContext.loginResult.isNeedSetPassword()->true"

    .line 842
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    goto/16 :goto_3

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isHasExtendAcc()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "onLoginContinue->loginContext.loginResult.isHasExtendAcc()->true"

    .line 846
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x67

    goto/16 :goto_3

    .line 848
    :cond_2
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isShowForLogin()Z

    move-result v1

    const/4 v3, 0x7

    const-string v4, "hasBack"

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v1, :cond_5

    const-string v1, "onLoginContinue->loginContext.loginResult.isShowForLogin()->true"

    .line 849
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isForceForLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v5

    goto :goto_0

    :cond_3
    move-object v1, v6

    :goto_0
    const-string v2, "force"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v6

    :goto_1
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getRealInfoNotification()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realInfoNotification"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x69

    goto/16 :goto_3

    .line 854
    :cond_5
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedActive()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "onLoginContinue->loginContext.loginResult.isNeedActive()->true"

    .line 855
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    if-ne v1, v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v6

    :goto_2
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6a

    goto :goto_3

    .line 858
    :cond_7
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->isNeedBindPhone()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "onLoginContinue->loginContext.loginResult.isNeedBindPhone()->true"

    .line 859
    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x73

    goto :goto_3

    .line 863
    :cond_8
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const-string v1, "agreement_status"

    const-string v3, "ghome_reopen"

    invoke-static {v0, v1, v3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onLoginContinue->final else"

    .line 865
    invoke-static {v2, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 867
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginDoneData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "userid"

    .line 870
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "userId"

    invoke-static {v5, v4}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set global params userid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "id"

    const-string v4, "\u767b\u5f55\u6210\u529f"

    .line 874
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const-string v4, "businessEvent"

    invoke-static {v3, v4, v2}, Lcom/sqo/eventcollection/EventLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method private onPwdLoginCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 7

    const-string v0, "8"

    const/4 v1, 0x0

    if-eqz p7, :cond_8

    .line 360
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    .line 361
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getImagecodeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p4, ""

    if-nez p1, :cond_7

    .line 363
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getImagecodeType()Ljava/lang/String;

    move-result-object p1

    const/4 p5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/16 v0, 0x31

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p6, v0, :cond_2

    const/16 v0, 0x32

    if-eq p6, v0, :cond_1

    const/16 v0, 0x34

    if-eq p6, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p6, "4"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p5, 0x2

    goto :goto_0

    :cond_1
    const-string p6, "2"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p5, 0x1

    goto :goto_0

    :cond_2
    const-string p6, "1"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p5, 0x0

    :cond_3
    :goto_0
    if-eqz p5, :cond_6

    if-eq p5, v3, :cond_5

    if-eq p5, v2, :cond_4

    goto/16 :goto_1

    .line 371
    :cond_4
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    if-eqz p1, :cond_b

    .line 373
    :try_start_0
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p1, p5, p3, p4}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showGeeTestValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 368
    :cond_5
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSdg_width()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSdg_height()Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    move-object v0, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showQuickValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_6
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p1, p3, p5, p4}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_7
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p1, p3, p5, p4}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz p5, :cond_a

    .line 385
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_9

    .line 387
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 388
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p2

    const-string v0, "checkCodeGuid"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p7}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object p2

    const-string p7, "checkCodeUrl"

    invoke-interface {v6, p7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 392
    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onPwdLoginFailedCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 394
    :cond_a
    invoke-virtual {p7, p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 395
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 396
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {p1, p7}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 397
    invoke-virtual {p0, p7, v1, v1, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :catch_0
    :cond_b
    :goto_1
    return-void
.end method

.method private onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/login/model/StatusCallback;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 785
    invoke-virtual {p0, v0, p4, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 786
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->isEmpty(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x70

    .line 787
    invoke-virtual {p0, p1, p4, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 788
    :cond_1
    sget-boolean p1, Lcom/ghomesdk/gameplus/config/Config;->SHOW_SMS_LOGIN:Z

    if-eqz p1, :cond_2

    .line 789
    invoke-virtual {p0, v0, p4, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x64

    .line 791
    invoke-virtual {p0, p1, p4, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private setPasswordBack(Z)V
    .locals 3

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passwordBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginManager"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v0, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v1, 0x68

    const-string v2, "doBack"

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tryAutoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 8

    .line 741
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    new-instance v7, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;)V

    invoke-static {p0, v0, p1, v7}, Lcom/ghomesdk/gameplus/impl/ServerApi;->autoLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method


# virtual methods
.method protected checkCodePwdLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 244
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;

    invoke-direct {v5, p0, p4, p8}, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->checkCodeLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 313
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$8;

    invoke-direct {v0, p0, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager$8;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->activateCode(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public doBack(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doBack state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v1, 0x6a

    if-eq v1, v0, :cond_6

    const/16 v1, 0x69

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x67

    if-ne v1, v0, :cond_5

    .line 117
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    const/4 v1, 0x4

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p0, v2, p1, v3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    const/16 v4, 0x65

    if-ne v1, v0, :cond_2

    .line 120
    invoke-virtual {p0, v4, p1, v3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-ne v1, v0, :cond_3

    .line 122
    invoke-virtual {p0, v2, p1, v3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    const/16 v0, 0x70

    .line 124
    invoke-virtual {p0, v0, p1, v3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {p0, v4, p1, v3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const-string v0, "doBack"

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_1

    .line 115
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doBackExtend(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_1
    return-void
.end method

.method public doCancel(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    const-string p1, "doCancel"

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 10

    move-object v9, p0

    .line 207
    iget v0, v9, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v1, 0x65

    if-ne v1, v0, :cond_0

    .line 208
    invoke-direct/range {p0 .. p9}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    if-ne v1, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    .line 210
    invoke-virtual/range {v0 .. v8}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->checkCodePwdLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x75

    if-ne v1, v0, :cond_2

    .line 212
    invoke-direct/range {p0 .. p9}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct/range {p0 .. p9}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public doClickCancelFillRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->cancelRealInfo(Z)V

    .line 650
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    return-void
.end method

.method public doClickConfirmGuestUpgradeFinish(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginDoneData()Ljava/util/Map;

    move-result-object p1

    const-string p2, "userid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "userId"

    invoke-static {v0, p1}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "guest upgrade params userid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginDoneData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginManager"

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doClickForgetPassword(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    const/16 p1, 0x75

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method public doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 478
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$16;

    invoke-direct {v0, p0, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$16;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->guestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doClickGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method public doClickPwdLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    const-string v0, "doClickPwdLogin"

    .line 157
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 165
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->sendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doClickSmsLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    const-string v0, "doClickSmsLogin"

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 9

    const-string v0, "doClose"

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    :cond_0
    const/16 v1, 0x6b

    .line 89
    iget v2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    if-ne v1, v2, :cond_1

    .line 90
    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    :cond_1
    const/16 v1, 0x71

    if-ne v1, v2, :cond_2

    .line 94
    invoke-virtual {p0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    .line 97
    :cond_2
    new-instance v8, Lcom/ghomesdk/gameplus/login/model/LoginManager$1;

    invoke-direct {v8, p0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager$1;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    .line 103
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$2;

    invoke-direct {v6, p0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager$2;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, v8

    move-object v7, v8

    .line 109
    invoke-interface/range {v3 .. v8}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method

.method public doCloseView(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->setNeedBindPhone(Z)V

    .line 149
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 463
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$15;

    invoke-direct {v0, p0, p5}, Lcom/ghomesdk/gameplus/login/model/LoginManager$15;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->daoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doFillRealName(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 294
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;

    invoke-direct {v0, p0, p5, p6}, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->fillRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doGoGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    const-string v0, "doGuestUpgrade"

    .line 161
    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doGuestCallback(IZLcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGuestCallback code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 674
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    const/16 p1, 0x9

    .line 675
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 677
    iget-object p1, p3, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0x64

    .line 681
    invoke-virtual {p0, p2, p4, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 683
    :cond_1
    iget v3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/4 p2, 0x1

    if-ne v3, p2, :cond_2

    const/4 p2, 0x3

    .line 684
    invoke-virtual {p0, p2, p4, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 687
    :cond_2
    iput p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    if-eqz p4, :cond_3

    const/4 v1, 0x0

    .line 689
    iget v4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    move-object v0, p4

    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public doLogout(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    const/4 p1, 0x0

    .line 575
    invoke-virtual {p0, p2, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 576
    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/login/LoginData;->setLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 577
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->setSetCancelRealInfo(Z)V

    .line 578
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    const-string p2, ""

    iput-object p2, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    .line 580
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/thirdLogin/ThirdLogin;->thirdLogout(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V

    const-string p1, "userId"

    .line 581
    invoke-static {p1, p2}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LoginManager"

    const-string p2, "set global params empty userId"

    .line 582
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doOtherLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doPayGuestCallback(IZLcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doPayGuestCallback code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LoginManager"

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 656
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    const/4 p1, 0x2

    .line 657
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginDoneData()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 659
    :cond_0
    iget v3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/4 p1, 0x1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 660
    invoke-virtual {p0, p1, p4, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 663
    :cond_1
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    if-eqz p4, :cond_2

    const/4 v1, 0x0

    .line 665
    iget v4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    move-object v0, p4

    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public doPayGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    const/16 v0, 0x71

    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method public doPayResult(ILcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 70
    iget v3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 73
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 76
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 80
    iget v4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/4 v5, 0x0

    const-string v2, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_1
    return-void
.end method

.method public doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 418
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager$12;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p5, p6, v6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->pwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 494
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;

    invoke-direct {v0, p0, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->guestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v7, p3

    .line 586
    iget-object v0, v9, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginData(Landroid/content/Context;Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginManager"

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "-10869608"

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p7

    invoke-virtual {p0, v1, v0, v4}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    :cond_0
    move-object/from16 v4, p7

    .line 592
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getAutoKey()Ljava/lang/String;

    move-result-object v10

    .line 593
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getPhoneStr()Ljava/lang/String;

    move-result-object v3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autokey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v11, v9, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    new-instance v12, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v3

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;)V

    invoke-static {p0, v11, v10, v12}, Lcom/ghomesdk/gameplus/impl/ServerApi;->autoLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doQuickLoginRemove(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 701
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doResetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 555
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$19;

    invoke-direct {v6, p0, p3, p6}, Lcom/ghomesdk/gameplus/login/model/LoginManager$19;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->resetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 537
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;

    invoke-direct {v0, p0, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const-string p4, ""

    invoke-static {p1, p2, p4, p3, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->setPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 429
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$13;

    invoke-direct {v0, p0, p4}, Lcom/ghomesdk/gameplus/login/model/LoginManager$13;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->smallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doSmsCodeForResetPwd(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    const/4 p1, 0x0

    .line 255
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->setPasswordBack(Z)V

    .line 258
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "phone"

    .line 259
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "code"

    .line 260
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x68

    .line 261
    invoke-virtual {p0, p2, p6, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method public doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 265
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;

    invoke-direct {v5, p0, p6, p3, p5}, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->smsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public doStart(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initData()V

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPage(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 1

    .line 328
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ghomesdk/gameplus/GamePlus;->changeThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public doThirdFillRealBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 7

    .line 344
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$10;

    invoke-direct {v6, p0, p7}, Lcom/ghomesdk/gameplus/login/model/LoginManager$10;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->thirdAccountRealInfoBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 444
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/LoginManager$14;

    invoke-direct {v5, p0, p6, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager$14;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Landroid/content/Context;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->thirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public getGuestId()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

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

    .line 998
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginContext;->getLoginDoneData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRealInfoData()Lcom/ghomesdk/gameplus/login/model/RealInfoData;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginResult;->realInfoData:Lcom/ghomesdk/gameplus/login/model/RealInfoData;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initJump()V

    .line 49
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initData()V

    return-void
.end method

.method protected initJump()V
    .locals 14

    const-string v0, "LoginManager"

    const-string v1, "initJump"

    .line 887
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v2, "doBack"

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x65

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v7, "doClose"

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v9, "doClickSmsLogin"

    invoke-direct {v1, v3, v9}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v10, "doClickForgetPassword"

    invoke-direct {v1, v3, v10}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/16 v10, 0x75

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v11, "doCancel"

    invoke-direct {v1, v3, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v5, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v5, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v5, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const-string v13, "doClickPwdLogin"

    invoke-direct {v1, v5, v13}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v9}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x67

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x6b

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0xc9

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v10, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v10, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x68

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x6a

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x69

    invoke-direct {v1, v3, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v3, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v3, 0x70

    invoke-direct {v1, v3, v2}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v2, 0x70

    invoke-direct {v1, v2, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v2, 0x12d

    invoke-direct {v1, v2, v11}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    invoke-direct {v1, v2, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v2, 0x71

    invoke-direct {v1, v2, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v2, 0x73

    invoke-direct {v1, v2, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v1, Lcom/ghomesdk/gameplus/login/model/PairKey;

    const/16 v2, 0x74

    invoke-direct {v1, v2, v7}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initNoInitRealInfoData(Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initJump()V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    return-void
.end method

.method public isActivate()Z
    .locals 2

    .line 726
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v1, 0x6a

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBindPhone()Z
    .locals 2

    .line 722
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v1, 0x73

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFillRealInfo()Z
    .locals 2

    .line 718
    iget v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/16 v1, 0x69

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V
    .locals 8
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

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget v5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    .line 965
    iput p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 967
    iput v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 968
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 970
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginData;->setLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xca

    if-eq v2, p1, :cond_2

    const/16 v2, 0xcb

    if-ne v2, p1, :cond_3

    .line 972
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-boolean v0, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->isGuest:Z

    .line 973
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginGuestData(Landroid/content/Context;)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    .line 977
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object v7, p3

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCallback data = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 981
    iget v6, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    const-string v4, ""

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_5
    return-void
.end method

.method protected onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p3

    move v1, p1

    move-object v2, p2

    .line 987
    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/login/model/StatusCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 v3, 0x3

    const/4 v4, 0x3

    move-object v0, p3

    move v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 993
    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/StatusCallback;->callback(ILjava/lang/String;IILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJump op = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LoginManager"

    invoke-static {v3, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->mapJump:Ljava/util/Map;

    new-instance v4, Lcom/ghomesdk/gameplus/login/model/PairKey;

    iget v5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-direct {v4, v5, p1}, Lcom/ghomesdk/gameplus/login/model/PairKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onJump error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1007
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",new = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJumpInit()V

    .line 1010
    invoke-virtual {p0, v1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPage(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v4, p1, :cond_3

    .line 1012
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJumpCancel "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x66

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p1, v5, :cond_4

    .line 1015
    invoke-virtual {p0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onJumpPassword(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 1017
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallback(status, cb, null) "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method protected onJumpCancel(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "protected onJumpCancel"

    .line 1029
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1030
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method protected onJumpInit()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method

.method protected onJumpPassword(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    const/16 v0, 0x66

    const/4 v1, 0x0

    .line 1034
    invoke-virtual {p0, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method

.method protected onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 796
    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method protected onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 4

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginSuccess data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 804
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->initData()V

    .line 806
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->update(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 809
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getIsNewUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "method"

    const-string v3, "mobile"

    .line 813
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "result_code"

    const-string v3, "0"

    .line 814
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isNewUser"

    .line 815
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->notifyAfterRegisterFinished(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0x72

    .line 822
    invoke-virtual {p0, p2, p5, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/16 p2, 0x6b

    .line 824
    invoke-virtual {p0, p2, p5, p1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    .line 828
    :cond_3
    invoke-direct {p0, p5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginContinue(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method protected onPwdLoginFailedCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/login/model/LoginConfirm;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/login/model/StatusCallback;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x20

    if-ne p2, p4, :cond_0

    if-eqz p1, :cond_0

    .line 404
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;

    invoke-direct {v5, p0, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    .line 410
    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0, p4, p5, p3, p6}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method protected onStartPage(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 734
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onStartPageNaive(ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->tryAutoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 2

    .line 942
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p2, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    if-eqz p2, :cond_2

    .line 944
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object p1

    .line 948
    :cond_0
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->isGuest:Z

    goto :goto_0

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->isGuest:Z

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->userId:Ljava/lang/String;

    .line 954
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginPhoneStr:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 956
    iput-object p2, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->userId:Ljava/lang/String;

    const-string p2, ""

    .line 957
    iput-object p2, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginPhoneStr:Ljava/lang/String;

    .line 959
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "saveLoginInfo isGuest = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-boolean p2, p2, Lcom/ghomesdk/gameplus/login/LoginContext;->isGuest:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginManager"

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
