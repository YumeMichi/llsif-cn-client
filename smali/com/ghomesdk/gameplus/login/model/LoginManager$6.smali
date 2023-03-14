.class Lcom/ghomesdk/gameplus/login/model/LoginManager$6;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_phoneStr:Ljava/lang/String;

.field final synthetic val$_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_phoneStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSmsLogin Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginInfoModel data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 271
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$100(Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V

    .line 272
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_type:Ljava/lang/String;

    const-string p2, "4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "1"

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$100(Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V

    .line 277
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 v1, 0x3

    iput v1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginMethod:I

    .line 278
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNoPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, v0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$100(Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V

    .line 284
    invoke-virtual {p3, p2}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setNoPassword(Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p1, p3, v0, v0, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onLoginSuccess(Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;ZZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$6;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
