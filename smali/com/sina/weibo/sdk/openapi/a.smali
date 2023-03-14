.class public final Lcom/sina/weibo/sdk/openapi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/IWBAPI;


# instance fields
.field private mContext:Landroid/content/Context;

.field private r:Lcom/sina/weibo/sdk/auth/a;

.field private s:Lcom/sina/weibo/sdk/share/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    .line 26
    new-instance p1, Lcom/sina/weibo/sdk/auth/a;

    invoke-direct {p1}, Lcom/sina/weibo/sdk/auth/a;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 27
    new-instance p1, Lcom/sina/weibo/sdk/share/e;

    invoke-direct {p1}, Lcom/sina/weibo/sdk/share/e;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->s:Lcom/sina/weibo/sdk/share/e;

    return-void
.end method


# virtual methods
.method public final authorize(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    const-string v1, "WBSsoTag"

    const-string v2, "authorize()"

    .line 1028
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1032
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 1033
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1070
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1034
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->a(Landroid/app/Activity;)V

    return-void

    .line 1036
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->b(Landroid/app/Activity;)V

    return-void

    .line 1030
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "listener can not be null."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    const-string v1, "WBSsoTag"

    const-string v2, "authorizeCallback()"

    .line 2059
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    if-eqz v1, :cond_7

    const v1, 0x80cd

    if-ne v1, p2, :cond_6

    const/4 p2, -0x1

    if-ne p3, p2, :cond_4

    if-eqz p4, :cond_7

    const-string p2, "error"

    .line 2068
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "error_type"

    .line 2069
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "error_description"

    .line 2070
    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2071
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2072
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 2073
    invoke-static {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2075
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 2076
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onComplete(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    return-void

    .line 2078
    :cond_0
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 p3, -0x4

    const-string p4, "oauth2AccessToken is null"

    invoke-direct {p2, p3, p4, p4}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    return-void

    :cond_1
    const-string p1, "access_denied"

    .line 2081
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "OAuthAccessDeniedException"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 2084
    :cond_2
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 p4, -0x5

    invoke-direct {p2, p4, p3, v1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    return-void

    .line 2082
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    invoke-interface {p1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onCancel()V

    return-void

    :cond_4
    if-nez p3, :cond_5

    .line 2088
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    invoke-interface {p1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onCancel()V

    return-void

    .line 2090
    :cond_5
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 p3, -0x6

    const-string p4, "result code is error"

    invoke-direct {p2, p3, p4, p4}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    return-void

    .line 2093
    :cond_6
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 p3, -0x7

    const-string p4, "request code is error"

    const-string v0, "requestCode is error"

    invoke-direct {p2, p3, p4, v0}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    :cond_7
    return-void
.end method

.method public final authorizeClient(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    const-string v1, "WBSsoTag"

    const-string v2, "authorizeClient()"

    .line 2041
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2045
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 2046
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->a(Landroid/app/Activity;)V

    return-void

    .line 2043
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "listener can not be null."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final authorizeWeb(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    const-string v1, "WBSsoTag"

    const-string v2, "authorizeWeb()"

    .line 2050
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2054
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 2055
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->b(Landroid/app/Activity;)V

    return-void

    .line 2052
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "listener can not be null."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 7068
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "_weibo_resp_errcode"

    .line 7073
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7082
    :cond_0
    new-instance v2, Lcom/sina/weibo/sdk/common/UiError;

    const-string v3, "_weibo_resp_errstr"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error from weibo client!"

    invoke-direct {v2, v1, p1, v3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    :goto_0
    return-void

    .line 7079
    :cond_1
    invoke-interface {p2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onCancel()V

    return-void

    .line 7076
    :cond_2
    invoke-interface {p2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7087
    new-instance v1, Lcom/sina/weibo/sdk/common/UiError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    :cond_3
    return-void
.end method

.method public final isWBAppInstalled()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final isWBAppSupportMultipleImage()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/a;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/sina/weibo/sdk/openapi/a;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    return-void
.end method

.method public final registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    .locals 0

    .line 42
    invoke-static {p2, p3}, Lcom/sina/weibo/sdk/a;->a(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    return-void
.end method

.method public final setLoggerEnable(Z)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/c;->setLoggerEnable(Z)V

    return-void
.end method

.method public final shareMessage(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->s:Lcom/sina/weibo/sdk/share/e;

    if-eqz p1, :cond_5

    .line 3041
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_5

    .line 3044
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3045
    iget-wide v3, v0, Lcom/sina/weibo/sdk/share/e;->D:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    .line 3048
    iput-wide v1, v0, Lcom/sina/weibo/sdk/share/e;->D:J

    if-eqz p3, :cond_1

    .line 3050
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/share/e;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    return-void

    .line 4058
    :cond_1
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object p3

    .line 3054
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 4062
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 4173
    iget p3, p3, Lcom/sina/weibo/sdk/b/a$a;->ah:I

    const/16 v1, 0x2710

    if-le p3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 3055
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/share/e;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 5164
    invoke-static {}, Lcom/sina/weibo/sdk/a;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 5168
    new-instance v0, Lcom/sina/weibo/sdk/web/b/d;

    invoke-direct {v0, p3}, Lcom/sina/weibo/sdk/web/b/d;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    .line 5169
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/web/b/d;->setContext(Landroid/content/Context;)V

    .line 6158
    iput-object p2, v0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 5171
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 6162
    iput-object p2, v0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    .line 5172
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5174
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p3

    .line 5175
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 6166
    iput-object p3, v0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    .line 5180
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5182
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/web/b/d;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5184
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/sina/weibo/sdk/share/ShareTransActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3e9

    const-string v1, "start_flag"

    .line 5185
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "start_web_activity"

    const-string v1, "com.sina.weibo.sdk.web.WebActivity"

    .line 5186
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5187
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p2, 0x2711

    .line 5188
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void
.end method
