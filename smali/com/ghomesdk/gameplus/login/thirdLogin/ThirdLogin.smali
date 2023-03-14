.class public Lcom/ghomesdk/gameplus/login/thirdLogin/ThirdLogin;
.super Ljava/lang/Object;
.source "ThirdLogin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThirdLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onActivityResult(Ljava/lang/String;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "302"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "301"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    invoke-static {p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;)V
    .locals 1

    const-string v0, "302"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance p2, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;

    invoke-direct {p2, p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 20
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->startLogin()V

    goto :goto_0

    :cond_0
    const-string v0, "300"

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance p2, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;

    invoke-direct {p2, p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 23
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->login()V

    goto :goto_0

    :cond_1
    const-string v0, "301"

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 25
    check-cast p0, Landroid/app/Activity;

    .line 26
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->getIntance(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->login()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static thirdLogout(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V
    .locals 0

    .line 33
    check-cast p0, Landroid/app/Activity;

    .line 34
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->getIntance(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->logout()V

    return-void
.end method
