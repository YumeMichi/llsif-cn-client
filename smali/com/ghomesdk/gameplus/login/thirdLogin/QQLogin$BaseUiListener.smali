.class Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "QQLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseUiListener"
.end annotation


# instance fields
.field private inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/tencent/tauth/DefaultUiListener;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "QQLogin"

    const-string v1, "com.tencent.tauth.IUiListener onCancel"

    .line 125
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    if-eqz v0, :cond_1

    const-string v0, "QQLogin"

    const-string v1, "QQLogin onSuccess"

    .line 98
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "openid"

    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    .line 102
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "expires_in"

    .line 103
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)Lcom/tencent/tauth/Tencent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)Lcom/tencent/tauth/Tencent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-virtual {v1, v6, p1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    iget-object v3, p1, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;->inner_QQLogin:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    iget-object v5, p1, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    const-string v7, "301"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QQLogin exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    const-string p1, "QQLogin"

    const-string v0, "com.tencent.tauth.IUiListener onError"

    .line 120
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWarning(I)V
    .locals 1

    const-string p1, "QQLogin"

    const-string v0, "com.tencent.tauth.IUiListener onWarning"

    .line 130
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
