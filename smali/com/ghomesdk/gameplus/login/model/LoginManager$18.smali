.class Lcom/ghomesdk/gameplus/login/model/LoginManager$18;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 540
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doSetPassword Callback,code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",message = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LoginManager"

    invoke-static {v0, p3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->setPasswordSuccess()V

    .line 543
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 p2, 0x4

    iput p2, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 544
    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 545
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$200(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$18;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method
