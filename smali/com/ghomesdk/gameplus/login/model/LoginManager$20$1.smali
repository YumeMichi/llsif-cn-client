.class Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$20;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doCancel(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    .line 621
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_userId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$quickLoginCallback:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;

    if-eqz p1, :cond_0

    .line 623
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$quickLoginCallback:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$1;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_userId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;->callBack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
