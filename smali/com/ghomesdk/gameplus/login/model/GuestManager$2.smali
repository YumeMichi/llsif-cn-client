.class Lcom/ghomesdk/gameplus/login/model/GuestManager$2;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GuestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager;->doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

.field final synthetic val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

.field final synthetic val$_phoneStr:Ljava/lang/String;

.field final synthetic val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_phoneStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 10

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPwdAuth Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuestManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_riskConfirm:Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_phoneStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v2 .. v9}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$100(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/GuestManager$2;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
