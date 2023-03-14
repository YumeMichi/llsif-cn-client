.class Lcom/ghomesdk/gameplus/login/model/GuestManager$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GuestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager;->doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
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

.field final synthetic val$_phoneStr:Ljava/lang/String;

.field final synthetic val$_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_phoneStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSmsAuth Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuestManager"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 70
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_1

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_phoneStr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->setPhone(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iput-object p3, p1, Lcom/ghomesdk/gameplus/login/LoginContext;->loginData:Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    .line 74
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getNoPassword()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_type:Ljava/lang/String;

    const-string p2, "4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$000(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_phoneStr:Ljava/lang/String;

    const-string p3, "phone"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    const/16 p3, 0x68

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p2, p3, v0, p1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/GuestManager$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    return-void
.end method
