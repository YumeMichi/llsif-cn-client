.class Lcom/ghomesdk/gameplus/login/model/GuestManager$6;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GuestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager;->tryGuestUpgrade(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 6

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGuestUpgrade Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuestManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 225
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto/16 :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "phone"

    if-eqz p1, :cond_1

    .line 229
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 230
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSubName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "accName"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSubDesc()Ljava/lang/String;

    move-result-object p2

    const-string p3, "accDesc"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager;->guestId:Ljava/lang/String;

    const-string p3, "guestId"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/16 p3, 0xc9

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p2, p3, v0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNextAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$200(Lcom/ghomesdk/gameplus/login/model/GuestManager;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 237
    new-instance v3, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;

    invoke-direct {v3, p0}, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager$6;)V

    .line 245
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;-><init>(Lcom/ghomesdk/gameplus/login/model/GuestManager$6;)V

    .line 251
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$200(Lcom/ghomesdk/gameplus/login/model/GuestManager;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    move-object v1, p2

    move-object v2, v5

    move-object v4, v5

    invoke-interface/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p3, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    .line 256
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/4 p2, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, p2, v1, v2}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    .line 257
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 258
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/16 p3, 0xcb

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p2, p3, v0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
