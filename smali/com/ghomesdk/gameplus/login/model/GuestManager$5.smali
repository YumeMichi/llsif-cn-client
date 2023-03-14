.class Lcom/ghomesdk/gameplus/login/model/GuestManager$5;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GuestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager;->doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_accDesc:Ljava/lang/String;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

.field final synthetic val$_phoneStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_phoneStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_accDesc:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 2

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    .line 202
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p3, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    .line 203
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 204
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_phoneStr:Ljava/lang/String;

    const-string v0, "phone"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_accDesc:Ljava/lang/String;

    const-string v0, "accDesc"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/16 p3, 0xca

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p2, p3, v0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/GuestManager$5;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
