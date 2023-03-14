.class public Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;
.super Ljava/lang/Object;
.source "AppConfigurationResponse.java"


# instance fields
.field private accountDeletionPeriod:I

.field private agreementVersion:Ljava/lang/String;

.field private brand_logo:Ljava/lang/String;

.field private brand_name:Ljava/lang/String;

.field private daoyu_clientid:Ljava/lang/String;

.field private daoyu_download_url:Ljava/lang/String;

.field private display_thirdaccout:Ljava/lang/String;

.field private force_show_agreement:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private greport_log_level:Ljava/lang/String;

.field private guest_enable:Ljava/lang/String;

.field private is_match:Ljava/lang/String;

.field private log_level:Ljava/lang/String;

.field private login_button:[Ljava/lang/String;

.field private login_icon:[Ljava/lang/String;

.field private login_limit_enable:Ljava/lang/String;

.field private need_float_window_permission:Ljava/lang/String;

.field private new_device_id_server:Ljava/lang/String;

.field private qq_appId:Ljava/lang/String;

.field private qq_scope:Ljava/lang/String;

.field private show_guest_confirm:Ljava/lang/String;

.field private thirdlogin_change_bind_days:Ljava/lang/String;

.field private voicetip_button:Ljava/lang/String;

.field private voicetip_one:Ljava/lang/String;

.field private voicetip_two:Ljava/lang/String;

.field private wegame_appid:Ljava/lang/String;

.field private wegame_clientid:Ljava/lang/String;

.field private wegame_companyId:Ljava/lang/String;

.field private wegame_loginUrl:Ljava/lang/String;

.field private weibo_appKey:Ljava/lang/String;

.field private weibo_redirectUrl:Ljava/lang/String;

.field private weixin_appId:Ljava/lang/String;

.field private weixin_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->display_thirdaccout:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->greport_log_level:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->guest_enable:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->log_level:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_appKey:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_redirectUrl:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_appId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_key:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_appId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_scope:Ljava/lang/String;

    const-string v1, "1.0.0"

    .line 20
    iput-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->agreementVersion:Ljava/lang/String;

    const-string v1, "http://a.sdo.com/u8000"

    .line 21
    iput-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_download_url:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->show_guest_confirm:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_one:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_two:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_button:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_limit_enable:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->need_float_window_permission:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->game_name:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_logo:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_name:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->is_match:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->new_device_id_server:Ljava/lang/String;

    const-string v1, "1"

    .line 37
    iput-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->force_show_agreement:Ljava/lang/String;

    const-string v1, "30"

    .line 39
    iput-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->thirdlogin_change_bind_days:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_clientid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_loginUrl:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_clientid:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_appid:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_companyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountDeletionPeriod()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->accountDeletionPeriod:I

    return v0
.end method

.method public getAgreementVersion()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->agreementVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand_logo()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_logo:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand_name()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDaoyu_clientid()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_clientid:Ljava/lang/String;

    return-object v0
.end method

.method public getDaoyu_download_url()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_thirdaccout()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->display_thirdaccout:Ljava/lang/String;

    return-object v0
.end method

.method public getForce_show_agreement()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->force_show_agreement:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGreport_log_level()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->greport_log_level:Ljava/lang/String;

    return-object v0
.end method

.method public getGuest_enable()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->guest_enable:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_match()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->is_match:Ljava/lang/String;

    return-object v0
.end method

.method public getLog_level()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->log_level:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin_button()[Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_button:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogin_icon()[Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_icon:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogin_limit_enable()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_limit_enable:Ljava/lang/String;

    return-object v0
.end method

.method public getNeed_float_window_permission()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->need_float_window_permission:Ljava/lang/String;

    return-object v0
.end method

.method public getNew_device_id_server()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->new_device_id_server:Ljava/lang/String;

    return-object v0
.end method

.method public getQq_appId()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_appId:Ljava/lang/String;

    return-object v0
.end method

.method public getQq_scope()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_scope:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_guest_confirm()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->show_guest_confirm:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdlogin_change_bind_days()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->thirdlogin_change_bind_days:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicetip_button()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_button:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicetip_one()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_one:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicetip_two()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_two:Ljava/lang/String;

    return-object v0
.end method

.method public getWegame_appid()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_appid:Ljava/lang/String;

    return-object v0
.end method

.method public getWegame_clientid()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_clientid:Ljava/lang/String;

    return-object v0
.end method

.method public getWegame_companyId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getWegame_loginUrl()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_loginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo_appKey()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo_redirectUrl()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixin_appId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_appId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixin_key()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_key:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountDeletionPeriod(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->accountDeletionPeriod:I

    return-void
.end method

.method public setAgreementVersion(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->agreementVersion:Ljava/lang/String;

    return-void
.end method

.method public setBrand_logo(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_logo:Ljava/lang/String;

    return-void
.end method

.method public setBrand_name(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_name:Ljava/lang/String;

    return-void
.end method

.method public setDaoyu_clientid(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_clientid:Ljava/lang/String;

    return-void
.end method

.method public setDaoyu_download_url(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_download_url:Ljava/lang/String;

    return-void
.end method

.method public setDisplay_thirdaccout(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->display_thirdaccout:Ljava/lang/String;

    return-void
.end method

.method public setForce_show_agreement(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->force_show_agreement:Ljava/lang/String;

    return-void
.end method

.method public setGreport_log_level(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->greport_log_level:Ljava/lang/String;

    return-void
.end method

.method public setGuest_enable(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->guest_enable:Ljava/lang/String;

    return-void
.end method

.method public setIs_match(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->is_match:Ljava/lang/String;

    return-void
.end method

.method public setLog_level(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->log_level:Ljava/lang/String;

    return-void
.end method

.method public setLogin_button([Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_button:[Ljava/lang/String;

    return-void
.end method

.method public setLogin_icon([Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_icon:[Ljava/lang/String;

    return-void
.end method

.method public setLogin_limit_enable(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_limit_enable:Ljava/lang/String;

    return-void
.end method

.method public setNeed_float_window_permission(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->need_float_window_permission:Ljava/lang/String;

    return-void
.end method

.method public setNew_device_id_server(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->new_device_id_server:Ljava/lang/String;

    return-void
.end method

.method public setQq_appId(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_appId:Ljava/lang/String;

    return-void
.end method

.method public setQq_scope(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_scope:Ljava/lang/String;

    return-void
.end method

.method public setShow_guest_confirm(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->show_guest_confirm:Ljava/lang/String;

    return-void
.end method

.method public setThirdlogin_change_bind_days(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->thirdlogin_change_bind_days:Ljava/lang/String;

    return-void
.end method

.method public setVoicetip_button(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_button:Ljava/lang/String;

    return-void
.end method

.method public setVoicetip_one(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_one:Ljava/lang/String;

    return-void
.end method

.method public setVoicetip_two(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_two:Ljava/lang/String;

    return-void
.end method

.method public setWegame_appid(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_appid:Ljava/lang/String;

    return-void
.end method

.method public setWegame_clientid(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_clientid:Ljava/lang/String;

    return-void
.end method

.method public setWegame_companyId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_companyId:Ljava/lang/String;

    return-void
.end method

.method public setWegame_loginUrl(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_loginUrl:Ljava/lang/String;

    return-void
.end method

.method public setWeibo_appKey(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_appKey:Ljava/lang/String;

    return-void
.end method

.method public setWeibo_redirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_redirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setWeixin_appId(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_appId:Ljava/lang/String;

    return-void
.end method

.method public setWeixin_key(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfigurationResponse{display_thirdaccout=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->display_thirdaccout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", greport_log_level=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->greport_log_level:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", guest_enable=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->guest_enable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", log_level=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->log_level:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weibo_appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weibo_redirectUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weibo_redirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weixin_appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weixin_key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->weixin_key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qq_appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qq_scope=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->qq_scope:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", agreementVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->agreementVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", daoyu_download_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_download_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", show_guest_confirm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->show_guest_confirm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voicetip_one=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_one:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voicetip_two=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_two:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voicetip_button=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->voicetip_button:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", login_limit_enable=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_limit_enable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", need_float_window_permission=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->need_float_window_permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand_logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->brand_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_match=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->is_match:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", new_device_id_server=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->new_device_id_server:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", force_show_agreement=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->force_show_agreement:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdlogin_change_bind_days=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->thirdlogin_change_bind_days:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", daoyu_clientid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->daoyu_clientid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wegame_redirectUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_loginUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wegame_clientid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_clientid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wegame_appid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_appid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wegame_companyId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->wegame_companyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", login_button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_button:[Ljava/lang/String;

    .line 322
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", login_icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;->login_icon:[Ljava/lang/String;

    .line 323
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
