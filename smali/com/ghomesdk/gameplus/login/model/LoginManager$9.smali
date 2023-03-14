.class Lcom/ghomesdk/gameplus/login/model/LoginManager$9;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$phone:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doThirdBindPhone: code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LoginManager"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginResult:Lcom/ghomesdk/gameplus/login/model/LoginResult;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginResult;->setNeedBindPhone(Z)V

    .line 334
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$_context:Landroid/content/Context;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$phone:Ljava/lang/String;

    const-string p3, "gl_bindphone"

    invoke-static {p1, p3, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$200(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$9;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method
