.class Lcom/ghomesdk/gameplus/login/model/LoginManager$7;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doFillRealName(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_forPay:Z


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_forPay:Z

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 1

    .line 297
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillRealInfo Callback,code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",message = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LoginManager"

    invoke-static {v0, p3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->fillRealInfo()V

    .line 300
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_forPay:Z

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 p2, 0x2

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$200(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$7;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
