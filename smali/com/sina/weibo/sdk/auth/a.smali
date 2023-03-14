.class public final Lcom/sina/weibo/sdk/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public d:Lcom/sina/weibo/sdk/auth/WbAuthListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "WBSsoTag"

    const-string v1, "startClientAuth()"

    .line 98
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :try_start_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-nez v1, :cond_0

    const-string v1, "com.sina.weibo"

    const-string v3, "com.sina.weibo.SSOActivity"

    .line 103
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v3, v1, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;

    .line 1165
    iget-object v1, v1, Lcom/sina/weibo/sdk/b/a$a;->ag:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :goto_0
    invoke-static {}, Lcom/sina/weibo/sdk/a;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    const-string v3, "appKey"

    .line 109
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "redirectUri"

    .line 110
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scope"

    .line 111
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "packagename"

    .line 112
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "key_hash"

    .line 113
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "_weibo_command_type"

    const/4 v3, 0x3

    .line 115
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "_weibo_transaction"

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez p1, :cond_1

    .line 118
    :try_start_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance v2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 v3, -0x1

    const-string v4, "activity is null"

    invoke-direct {v2, v3, v4, v1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    return-void

    .line 120
    :cond_1
    invoke-static {p1, v2}, Lcom/sina/weibo/sdk/b/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x80cd

    .line 121
    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p1, "start SsoActivity "

    .line 122
    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance v2, Lcom/sina/weibo/sdk/common/UiError;

    const/4 v3, -0x2

    const-string v4, "your app is illegal"

    invoke-direct {v2, v3, v4, v1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/common/UiError;

    const/4 v2, -0x3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "occur exception"

    invoke-direct {v1, v2, v3, p1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 6

    .line 135
    new-instance v0, Lcom/sina/weibo/sdk/net/h;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/h;-><init>()V

    .line 137
    invoke-static {}, Lcom/sina/weibo/sdk/a;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_id"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "redirect_uri"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scope"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_hash"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "response_type"

    const-string v3, "code"

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "version"

    const-string v3, "0041005000"

    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "luicode"

    const-string v3, "10000360"

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OP_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lfid"

    invoke-virtual {v0, v3, v2}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "trans_token"

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trans_access_token"

    .line 157
    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/net/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://open.weibo.cn/oauth2/authorize?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    if-eqz v2, :cond_2

    .line 163
    invoke-static {}, Lcom/sina/weibo/sdk/auth/b;->b()Lcom/sina/weibo/sdk/auth/b;

    move-result-object v2

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    invoke-virtual {v2, v3, v4}, Lcom/sina/weibo/sdk/auth/b;->a(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    .line 167
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sina/weibo/sdk/web/WebActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    new-instance v4, Lcom/sina/weibo/sdk/web/b/a;

    invoke-direct {v4, v1, v0, v3}, Lcom/sina/weibo/sdk/web/b/a;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    invoke-virtual {v4, v0}, Lcom/sina/weibo/sdk/web/b/a;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
