.class Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager$21;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3

    .line 770
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 771
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$21;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$21;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$300(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
