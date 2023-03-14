.class public Lcom/ghomesdk/gameplus/impl/object/GeneralModel;
.super Ljava/lang/Object;
.source "GeneralModel.java"


# instance fields
.field private captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

.field checkCodeGuid:Ljava/lang/String;

.field checkCodeUrl:Ljava/lang/String;

.field existAppMid:Ljava/lang/String;

.field imagecodeType:Ljava/lang/String;

.field message:Ljava/lang/String;

.field nextAction:Ljava/lang/String;

.field result:Ljava/lang/String;

.field sdg_height:Ljava/lang/String;

.field sdg_width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->result:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->message:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->existAppMid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeGuid:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->nextAction:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->imagecodeType:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_height:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_width:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaptchaParams()Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    return-object v0
.end method

.method public getCheckCodeGuid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeUrl()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExistAppMid()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->existAppMid:Ljava/lang/String;

    return-object v0
.end method

.method public getImagecodeType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->imagecodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNextAction()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->nextAction:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSdg_height()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_height:Ljava/lang/String;

    return-object v0
.end method

.method public getSdg_width()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_width:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptchaParams(Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->captchaParams:Lcom/ghomesdk/gameplus/impl/object/CaptchaParams;

    return-void
.end method

.method public setCheckCodeGuid(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeGuid:Ljava/lang/String;

    return-void
.end method

.method public setCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->checkCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setExistAppMid(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->existAppMid:Ljava/lang/String;

    return-void
.end method

.method public setImagecodeType()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->imagecodeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->imagecodeType:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setNextAction(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->nextAction:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->result:Ljava/lang/String;

    return-void
.end method

.method public setSdg_height(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_height:Ljava/lang/String;

    return-void
.end method

.method public setSdg_width(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GeneralModel;->sdg_width:Ljava/lang/String;

    return-void
.end method
