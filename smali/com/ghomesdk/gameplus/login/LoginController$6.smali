.class Lcom/ghomesdk/gameplus/login/LoginController$6;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->callbackUI(ILjava/lang/String;IILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;I)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 461
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->val$msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->val$code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/LoginController$6;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "dlg_error_ok"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getBtnTextByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->access$600(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
