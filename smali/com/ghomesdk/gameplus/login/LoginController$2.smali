.class Lcom/ghomesdk/gameplus/login/LoginController$2;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_voiceMsg:Z


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$2;->val$_voiceMsg:Z

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showGeeTestValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/ghomesdk/gameplus/login/LoginController$2$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController$2$3;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/ghomesdk/gameplus/login/LoginController$2$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController$2$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showQuickValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    .line 233
    iget-object v0, v8, Lcom/ghomesdk/gameplus/login/LoginController$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/ghomesdk/gameplus/login/LoginController$2$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController$2$2;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
