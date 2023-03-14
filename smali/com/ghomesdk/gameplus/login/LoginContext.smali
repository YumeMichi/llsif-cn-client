.class public Lcom/ghomesdk/gameplus/login/LoginContext;
.super Ljava/lang/Object;
.source "LoginContext.java"


# instance fields
.field public inputPhoneStr:Ljava/lang/String;

.field public isGuest:Z

.field public loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

.field public loginPhoneStr:Ljava/lang/String;

.field public loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->isGuest:Z

    .line 16
    new-instance v0, Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/model/LoginResult;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    return-void
.end method


# virtual methods
.method public getLoginDoneData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    if-nez v1, :cond_0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getTicket()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ticket"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "userid"

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getIsNewUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isNewUser"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    const-string v2, "isGuest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPrompt_msg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prompt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
