.class final Lcom/ghomesdk/gameplus/GamePlus$3;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GamePlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->my_getAppConfiguration(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$3;->val$_context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$3;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;)V
    .locals 3

    .line 208
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "my_getAppConfiguration callback -> code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8

    if-eqz p3, :cond_8

    .line 210
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLog_level()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/log/LogLevel;->getLogLevel(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_setLogLevel(I)V

    .line 212
    iget-object v0, p0, Lcom/ghomesdk/gameplus/GamePlus$3;->val$_context:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getGreport_log_level()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/log/LogLevel;->getLogLevel(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/GamePlus;->my_setGReportLogLevel(Landroid/content/Context;I)V

    .line 214
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getDisplay_thirdaccout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->DISPLAY_THRIDACCOUNT:Z

    .line 216
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWeibo_appKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_APPKEY:Ljava/lang/String;

    .line 217
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWeibo_redirectUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_REDIRECTURL:Ljava/lang/String;

    .line 219
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWeixin_appId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    .line 220
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWeixin_key()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_OPENID:Ljava/lang/String;

    .line 222
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getQq_appId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->QQ_APPID:Ljava/lang/String;

    .line 223
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getQq_scope()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->QQ_SCOPE:Ljava/lang/String;

    .line 226
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getDaoyu_clientid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->DAOYU_CLIENTID:Ljava/lang/String;

    .line 229
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWegame_appid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_APPID:Ljava/lang/String;

    .line 230
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWegame_companyId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_COMPANYID:Ljava/lang/String;

    .line 231
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWegame_clientid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_CLIENTID:Ljava/lang/String;

    .line 232
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getWegame_loginUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_LOGIN_URL:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_LOGIN_URL:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "https://login.u.sdo.com/mobile-auth"

    .line 234
    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_LOGIN_URL:Ljava/lang/String;

    .line 237
    :cond_1
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getGame_name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->GAME_NAME:Ljava/lang/String;

    .line 239
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getNeed_float_window_permission()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->NEEDFLOATWINDOWAPERMISSION:Ljava/lang/String;

    .line 242
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getBrand_logo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->BRAND_LOGO:Ljava/lang/String;

    .line 243
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getBrand_name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->BRAND_NAME:Ljava/lang/String;

    .line 246
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getShow_guest_confirm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->SHOW_GUEST_CONFIRM:Z

    .line 248
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getDaoyu_download_url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getDaoyu_download_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getDaoyu_download_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "http://a.sdo.com/u8000"

    :goto_1
    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->DAOYU_DOWNLOAD_URL:Ljava/lang/String;

    .line 250
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getAgreementVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Assembly;->agreementVersion:Ljava/lang/String;

    .line 252
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getVoicetip_one()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_ONE:Ljava/lang/String;

    .line 253
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getVoicetip_two()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_TWO:Ljava/lang/String;

    .line 254
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getVoicetip_button()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->VOICE_BUTTON:Z

    .line 255
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLogin_limit_enable()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLogin_limit_enable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLogin_limit_enable()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_LIMIT_ENABLE:Ljava/lang/String;

    goto :goto_2

    .line 258
    :cond_4
    sput-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_LIMIT_ENABLE:Ljava/lang/String;

    .line 261
    :goto_2
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getIs_match()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getNew_device_id_server()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/greport/glog/GLog;->setDeviceIdServer(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/ghomesdk/gameplus/GamePlus$3;->val$_context:Landroid/app/Activity;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_ID_SERVER_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getNew_device_id_server()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/FileUtil;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_5
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getThirdlogin_change_bind_days()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->THIRD_LOGIN_CHANGE_BIND_DAYS:Ljava/lang/String;

    .line 273
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLogin_button()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    .line 274
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getLogin_icon()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v2, "official"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 281
    :cond_6
    sput-boolean v1, Lcom/ghomesdk/gameplus/config/Config;->SHOW_SMS_LOGIN:Z

    .line 284
    :cond_7
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->getAccountDeletionPeriod()I

    move-result p3

    sput p3, Lcom/ghomesdk/gameplus/config/Config;->ACCT_DELE_PERIOD:I

    .line 288
    :cond_8
    iget-object p3, p0, Lcom/ghomesdk/gameplus/GamePlus$3;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    if-eqz p3, :cond_9

    .line 289
    invoke-interface {p3, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/GamePlus$3;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;)V

    return-void
.end method
