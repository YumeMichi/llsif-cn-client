.class Lcom/ghomesdk/gameplus/login/LoginController$17;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/LoginConfirm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$_cancelText:Ljava/lang/String;

.field final synthetic val$_okText:Ljava/lang/String;

.field final synthetic val$_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$17;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_text:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_okText:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_cancelText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 9

    .line 735
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$17;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/ghomesdk/gameplus/login/LoginController$17$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController$17$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$17;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
