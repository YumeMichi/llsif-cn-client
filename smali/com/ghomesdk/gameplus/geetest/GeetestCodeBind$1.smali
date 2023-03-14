.class Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;
.super Lcom/geetest/sdk/GT3Listener;
.source "GeetestCodeBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->customVerity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-direct {p0}, Lcom/geetest/sdk/GT3Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick()V
    .locals 2

    .line 175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$700(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$800(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/GT3ConfigBean;->setApi1Json(Lorg/json/JSONObject;)V

    .line 180
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$100(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/geetest/sdk/GT3GeetestUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3GeetestUtils;->getGeetest()V

    return-void
.end method

.method public onClosed(I)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onClosed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogReady(Ljava/lang/String;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onDialogReady-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogResult(Ljava/lang/String;)V
    .locals 14

    .line 88
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$100(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/geetest/sdk/GT3GeetestUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3GeetestUtils;->dismissGeetestDialog()V

    .line 90
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onDialogResult-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "geetest_seccode"

    .line 95
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "geetest_validate"

    .line 96
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "geetest_challenge"

    .line 97
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v2, Lcom/ghomesdk/gameplus/impl/object/CaptchaGInfo;

    invoke-direct {v2}, Lcom/ghomesdk/gameplus/impl/object/CaptchaGInfo;-><init>()V

    .line 100
    new-instance v3, Lcom/ghomesdk/gameplus/impl/object/GTData;

    invoke-direct {v3}, Lcom/ghomesdk/gameplus/impl/object/GTData;-><init>()V

    .line 101
    invoke-virtual {v3, v0}, Lcom/ghomesdk/gameplus/impl/object/GTData;->setChallenge(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v1}, Lcom/ghomesdk/gameplus/impl/object/GTData;->setValidate(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3, p1}, Lcom/ghomesdk/gameplus/impl/object/GTData;->setSeccode(Ljava/lang/String;)V

    .line 104
    iput-object v3, v2, Lcom/ghomesdk/gameplus/impl/object/CaptchaGInfo;->gtData:Lcom/ghomesdk/gameplus/impl/object/GTData;

    .line 106
    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 107
    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captchaInfoJsonData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v4

    iget-object v5, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$200(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$300(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$400(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$500(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;

    invoke-direct {v13, p0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1$1;-><init>(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;)V

    invoke-virtual/range {v4 .. v13}, Lcom/ghomesdk/gameplus/login/LoginController;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onFailed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ErrorBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveCaptchaCode(I)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onReceiveCaptchaCode-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatistics(Ljava/lang/String;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onStatistics-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;->this$0:Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onSuccess-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
