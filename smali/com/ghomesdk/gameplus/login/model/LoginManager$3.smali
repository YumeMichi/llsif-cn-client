.class Lcom/ghomesdk/gameplus/login/model/LoginManager$3;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/GeneralModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

.field final synthetic val$_phoneStr:Ljava/lang/String;

.field final synthetic val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

.field final synthetic val$_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_phoneStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_type:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GeneralModel;)V
    .locals 9

    if-eqz p3, :cond_8

    .line 168
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getNextAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getImagecodeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 170
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getImagecodeType()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    goto/16 :goto_1

    .line 178
    :cond_4
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->getGtData()Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 180
    :try_start_0
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    move-result-object p1

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;->gtData:Lcom/ghomesdk/gameplus/impl/object/GeetestDataResponse;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_phoneStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_type:Ljava/lang/String;

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showGeeTestValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :cond_5
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_type:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getSdg_width()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getSdg_height()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v2 .. v8}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showQuickValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p3, v1}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_7
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeGuid()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p3, v1}, Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    .line 197
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget p2, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->state:I

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_1

    .line 199
    :cond_9
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :catch_0
    :cond_a
    :goto_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$3;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GeneralModel;)V

    return-void
.end method
