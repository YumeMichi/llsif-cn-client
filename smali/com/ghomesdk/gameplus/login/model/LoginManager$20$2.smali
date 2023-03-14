.class Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;
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

    .line 627
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3

    .line 630
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->saveLoginInfo(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    .line 631
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 632
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$phoneStr:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_userId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager;->loginContext:Lcom/ghomesdk/gameplus/login/LoginContext;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$phoneStr:Ljava/lang/String;

    iput-object v0, p2, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    .line 635
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20$2;->this$1:Lcom/ghomesdk/gameplus/login/model/LoginManager$20;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/model/LoginManager$20;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->access$300(Lcom/ghomesdk/gameplus/login/model/LoginManager;ZZLjava/util/Map;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
