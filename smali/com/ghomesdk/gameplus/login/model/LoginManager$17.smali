.class Lcom/ghomesdk/gameplus/login/model/LoginManager$17;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 6

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGuestLogin Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 499
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 p2, 0x6

    iput p2, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 502
    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p3, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    .line 503
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 494
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$17;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
