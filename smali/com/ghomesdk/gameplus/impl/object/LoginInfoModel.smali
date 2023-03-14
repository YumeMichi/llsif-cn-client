.class public Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;
.super Ljava/lang/Object;
.source "LoginInfoModel.java"


# instance fields
.field protected activation:Ljava/lang/String;

.field protected autokey:Ljava/lang/String;

.field private bindPhone:Ljava/lang/String;

.field private can_change_phone:I

.field private can_skip_bind:I

.field private captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

.field protected checkCodeGuid:Ljava/lang/String;

.field protected checkCodeUrl:Ljava/lang/String;

.field protected guestId:Ljava/lang/String;

.field protected hasExtendAccs:I

.field protected has_realInfo:Ljava/lang/String;

.field protected imagecodeType:Ljava/lang/String;

.field private isNewUser:Ljava/lang/String;

.field private isSndaidThird:I

.field protected is_bind:Ljava/lang/String;

.field protected message:Ljava/lang/String;

.field protected nextAction:Ljava/lang/String;

.field protected noPassword:Ljava/lang/String;

.field protected phone:Ljava/lang/String;

.field protected prompt_msg:Ljava/lang/String;

.field public realInfoNotification:Ljava/lang/String;

.field protected realInfo_force:Ljava/lang/String;

.field protected realInfo_force_pay:Ljava/lang/String;

.field protected realInfo_status:Ljava/lang/String;

.field protected realInfo_status_pay:Ljava/lang/String;

.field protected result:Ljava/lang/String;

.field protected sdg_height:Ljava/lang/String;

.field protected sdg_width:Ljava/lang/String;

.field private show_bind:I

.field private skip_period:I

.field protected subDesc:Ljava/lang/String;

.field protected subName:Ljava/lang/String;

.field protected ticket:Ljava/lang/String;

.field protected tip:Ljava/lang/String;

.field protected userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->result:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->message:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->userid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->guestId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->phone:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->is_bind:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->autokey:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->ticket:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->activation:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->tip:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->has_realInfo:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force_pay:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status_pay:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->hasExtendAccs:I

    .line 21
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->noPassword:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->nextAction:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->imagecodeType:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeUrl:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeGuid:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->prompt_msg:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subDesc:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_height:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_width:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->bindPhone:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->show_bind:I

    .line 34
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_skip_bind:I

    .line 35
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->skip_period:I

    .line 36
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_change_phone:I

    .line 37
    iput v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isSndaidThird:I

    const-string v0, "0"

    .line 51
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isNewUser:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivation()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->activation:Ljava/lang/String;

    return-object v0
.end method

.method public getAutokey()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->autokey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBindPhone()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->bindPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getCan_change_phone()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_change_phone:I

    return v0
.end method

.method public getCan_skip_bind()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_skip_bind:I

    return v0
.end method

.method public getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    return-object v0
.end method

.method public getCheckCodeGuid()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeUrl()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->guestId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHasExtendAccs()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->hasExtendAccs:I

    return v0
.end method

.method public getHas_realInfo()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->has_realInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagecodeType()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->imagecodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewUser()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isNewUser:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSndaidThird()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isSndaidThird:I

    return v0
.end method

.method public getIs_bind()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->is_bind:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNextAction()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->nextAction:Ljava/lang/String;

    return-object v0
.end method

.method public getNoPassword()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->noPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPrompt_msg()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->prompt_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInfoNotification()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfoNotification:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInfo_force()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInfo_force_pay()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force_pay:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInfo_status()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInfo_status_pay()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status_pay:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->result:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSdg_height()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_height:Ljava/lang/String;

    return-object v0
.end method

.method public getSdg_width()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_width:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_bind()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->show_bind:I

    return v0
.end method

.method public getSkip_period()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->skip_period:I

    return v0
.end method

.method public getSubDesc()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getSubName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->ticket:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->userid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isGuest()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->guestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActivation(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->activation:Ljava/lang/String;

    return-void
.end method

.method public setAutokey(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->autokey:Ljava/lang/String;

    return-void
.end method

.method public setBindPhone(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->bindPhone:Ljava/lang/String;

    return-void
.end method

.method public setCan_change_phone(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_change_phone:I

    return-void
.end method

.method public setCan_skip_bind(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_skip_bind:I

    return-void
.end method

.method public setCaptchaParams(Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    return-void
.end method

.method public setCheckCodeGuid(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeGuid:Ljava/lang/String;

    return-void
.end method

.method public setCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setGuestId(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->guestId:Ljava/lang/String;

    return-void
.end method

.method public setHasExtendAccs(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->hasExtendAccs:I

    return-void
.end method

.method public setHas_realInfo(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->has_realInfo:Ljava/lang/String;

    return-void
.end method

.method public setImagecodeType()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->imagecodeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->imagecodeType:Ljava/lang/String;

    return-void
.end method

.method public setIsNewUser(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isNewUser:Ljava/lang/String;

    return-void
.end method

.method public setIsSndaidThird(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isSndaidThird:I

    return-void
.end method

.method public setIs_bind(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->is_bind:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setNextAction(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->nextAction:Ljava/lang/String;

    return-void
.end method

.method public setNoPassword(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->noPassword:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPrompt_msg(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->prompt_msg:Ljava/lang/String;

    return-void
.end method

.method public setRealInfoNotification(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfoNotification:Ljava/lang/String;

    return-void
.end method

.method public setRealInfo_force(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force:Ljava/lang/String;

    return-void
.end method

.method public setRealInfo_force_pay(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force_pay:Ljava/lang/String;

    return-void
.end method

.method public setRealInfo_status(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status:Ljava/lang/String;

    return-void
.end method

.method public setRealInfo_status_pay(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status_pay:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->result:Ljava/lang/String;

    return-void
.end method

.method public setSdg_height(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_height:Ljava/lang/String;

    return-void
.end method

.method public setSdg_width(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_width:Ljava/lang/String;

    return-void
.end method

.method public setShow_bind(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->show_bind:I

    return-void
.end method

.method public setSkip_period(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->skip_period:I

    return-void
.end method

.method public setSubDesc(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subDesc:Ljava/lang/String;

    return-void
.end method

.method public setSubName(Ljava/lang/String;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subName:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->tip:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->userid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginInfoModel{result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->userid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", guestId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->guestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_bind=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->is_bind:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", autokey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->autokey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ticket=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->activation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->tip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", has_realInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->has_realInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isNewUser=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isNewUser:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realInfo_status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realInfo_force=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realInfo_force_pay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_force_pay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realInfo_status_pay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfo_status_pay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasExtendAccs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->hasExtendAccs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", noPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->noPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nextAction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->nextAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imagecodeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->imagecodeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", checkCodeUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", checkCodeGuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->checkCodeGuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", prompt_msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->prompt_msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->subDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdg_height=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_height:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdg_width=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->sdg_width:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bindPhone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->bindPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", show_bind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->show_bind:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", can_skip_bind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_skip_bind:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skip_period="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->skip_period:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", can_change_phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->can_change_phone:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSndaidThird="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isSndaidThird:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", captchaParams="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", realInfoNotification=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->realInfoNotification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
