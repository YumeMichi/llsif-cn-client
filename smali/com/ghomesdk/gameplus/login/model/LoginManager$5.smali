.class Lcom/ghomesdk/gameplus/login/model/LoginManager$5;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->checkCodePwdLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->val$_phoneStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 10

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCodeLogin code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->val$_phoneStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v2 .. v9}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$000(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager$5;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
