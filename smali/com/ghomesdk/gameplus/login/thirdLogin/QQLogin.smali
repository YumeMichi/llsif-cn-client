.class public Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;
.super Ljava/lang/Object;
.source "QQLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;
    }
.end annotation


# static fields
.field private static INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin; = null

.field private static final TAG:Ljava/lang/String; = "QQLogin"

.field private static loginListener:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;


# instance fields
.field activity:Landroid/app/Activity;

.field loginController:Lcom/ghomesdk/gameplus/login/LoginController;

.field private mTencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method public static getIntance(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;
    .locals 1

    .line 42
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)V

    sput-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    .line 45
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    iput-object p0, v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    .line 46
    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    .line 47
    new-instance p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)V

    sput-object p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginListener:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;

    .line 48
    sget-object p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    return-object p0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 79
    sget-object p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginListener:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;

    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    const/16 p0, 0x2774

    if-ne p1, p0, :cond_0

    const/16 p0, 0x2b5d

    if-ne p2, p0, :cond_0

    .line 82
    new-instance p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;

    sget-object p1, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->INTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;)V

    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public login()V
    .locals 10

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->setIsPermissionGranted(Z)V

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->QQ_APPID:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 64
    :cond_1
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->QQ_SCOPE:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginListener:Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin$BaseUiListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v8, "301"

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logout()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
