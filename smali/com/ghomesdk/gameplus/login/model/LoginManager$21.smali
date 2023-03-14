.class Lcom/ghomesdk/gameplus/login/model/LoginManager$21;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->tryAutoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

.field final synthetic val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

.field final synthetic val$autokey:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$autokey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 8

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 745
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput p2, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 746
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$phone:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 749
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSkip_period()I

    move-result p2

    const-string v1, "KEY_THIRD_BIND_PHONE_REFUSE_DAYS"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 750
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCan_skip_bind()I

    move-result p2

    const-string v1, "KEY_LOGIN_SKIP_BIND"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 751
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCan_change_phone()I

    move-result p2

    const-string v1, "KEY_LOGIN_CAN_CHANGE_BIND"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 754
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, v0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 755
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    if-nez p3, :cond_1

    .line 756
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2, v0, p3, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$300(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x17

    if-ne p3, p1, :cond_2

    .line 758
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2, v0, p3, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$300(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 760
    :cond_2
    new-instance v5, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$1;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$1;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$21;)V

    .line 767
    new-instance v7, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;

    invoke-direct {v7, p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$21;)V

    .line 774
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    const/4 v3, 0x0

    move-object v4, v7

    move-object v6, v7

    invoke-interface/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 741
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
