.class Lcom/ghomesdk/gameplus/login/model/LoginManager$20;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_userId:Ljava/lang/String;

.field final synthetic val$isGuest:Z

.field final synthetic val$phoneStr:Ljava/lang/String;

.field final synthetic val$quickLoginCallback:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$phoneStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_context:Landroid/content/Context;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    iput-boolean p5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$isGuest:Z

    iput-object p6, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    iput-object p7, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_userId:Ljava/lang/String;

    iput-object p8, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$quickLoginCallback:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$phoneStr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 600
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 p2, 0x2

    iput p2, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 601
    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 604
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getSkip_period()I

    move-result p2

    const-string v1, "KEY_THIRD_BIND_PHONE_REFUSE_DAYS"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 605
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCan_skip_bind()I

    move-result p2

    const-string v1, "KEY_LOGIN_SKIP_BIND"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 606
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getCan_change_phone()I

    move-result p2

    const-string v1, "KEY_LOGIN_CAN_CHANGE_BIND"

    invoke-static {p1, v1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 609
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, v0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x17

    if-ne p3, p1, :cond_2

    .line 611
    iget-boolean p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$isGuest:Z

    if-eqz p3, :cond_1

    .line 612
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void

    .line 616
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const-string p2, "agreement_checkbox_selected"

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 617
    new-instance v4, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;

    invoke-direct {v4, p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$20;)V

    .line 627
    new-instance v6, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;-><init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$20;)V

    .line 638
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    move-object v3, v6

    move-object v5, v6

    .line 639
    invoke-interface/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/model/LoginConfirm;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 595
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
