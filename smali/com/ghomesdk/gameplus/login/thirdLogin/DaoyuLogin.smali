.class public Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;
.super Ljava/lang/Object;
.source "DaoyuLogin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DaoyuLogin"


# instance fields
.field private dyApi:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPIFactory;->crateDYAPI(Landroid/content/Context;)Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;->dyApi:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    .line 24
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;->dyApi:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->DAOYU_CLIENTID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;->registerDYAPI(Ljava/lang/String;)V

    return-void
.end method

.method public static onDaoyuAuthCallback(Landroid/app/Activity;Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;)V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DaoyuLogin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget v0, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->code:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "\u672a\u77e5\u9519\u8bef"

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6388\u6743\u4fe1\u606f\u6210\u529f\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->openId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->openId:Ljava/lang/String;

    iget-object p1, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->clientId:Ljava/lang/String;

    invoke-virtual {v0, p0, p0, v1, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "\u5c1a\u672a\u5b89\u88c5\u53e8\u9c7cAPP"

    .line 38
    invoke-static {p0, v0}, Lcom/greport/glog/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 43
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u6388\u6743\u4fe1\u606f\u5931\u8d25\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8ba4\u8bc1\u5931\u8d25\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public startLogin()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;->dyApi:Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    const-string v2, "game_login"

    invoke-interface {v0, v1, v2}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;->openGameAuth(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
