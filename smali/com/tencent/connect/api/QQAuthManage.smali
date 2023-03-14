.class public Lcom/tencent/connect/api/QQAuthManage;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/api/QQAuthManage$Resp;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .locals 2

    .line 103
    invoke-static {p1}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "QQAuthManage"

    if-nez v0, :cond_0

    const-string p1, "gotoManagePage: not installed all qq"

    .line 104
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x3e8

    return p1

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/tencent/open/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "gotoManagePage: only support mobile qq"

    .line 109
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    :cond_1
    const-string v0, "8.6.0"

    .line 112
    invoke-static {p1, v0}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    const-string p1, "gotoManagePage: low version"

    .line 113
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x3e9

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V
    .locals 3

    const-string v0, "QQAuthManage"

    const-string v1, "doGotoMangePage"

    .line 121
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mqqapi://opensdk/open_auth_manage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/tencent/connect/api/QQAuthManage;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    .line 124
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.tencent.mobileqq"

    .line 129
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 136
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    new-instance p1, Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-direct {p1}, Lcom/tencent/connect/api/QQAuthManage$Resp;-><init>()V

    invoke-interface {p2, p1}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/api/QQAuthManage;Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/api/QQAuthManage;->a(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V

    return-void
.end method


# virtual methods
.method public gotoManagePage(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V
    .locals 3

    const-string v0, "QQAuthManage"

    const-string v1, "gotoManagePage"

    .line 44
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-direct {v1}, Lcom/tencent/connect/api/QQAuthManage$Resp;-><init>()V

    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v2}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, -0x3eb

    .line 47
    invoke-virtual {v1, p1}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setCode(I)V

    .line 48
    invoke-interface {p2, v1}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/connect/api/QQAuthManage;->a(Landroid/app/Activity;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v1, v2}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setCode(I)V

    .line 54
    invoke-interface {p2, v1}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/tencent/connect/api/QQAuthManage;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/connect/api/QQAuthManage;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage;->b:Lcom/tencent/connect/auth/c;

    new-instance v2, Lcom/tencent/connect/api/QQAuthManage$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/tencent/connect/api/QQAuthManage$1;-><init>(Lcom/tencent/connect/api/QQAuthManage;Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;Lcom/tencent/connect/api/QQAuthManage$Resp;)V

    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/c;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "gotoManagePage: not login"

    .line 60
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x7d1

    .line 61
    invoke-virtual {v1, p1}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setCode(I)V

    .line 62
    invoke-interface {p2, v1}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    return-void
.end method
