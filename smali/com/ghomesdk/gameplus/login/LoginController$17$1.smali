.class Lcom/ghomesdk/gameplus/login/LoginController$17$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController$17;->confirm(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

.field final synthetic val$_backCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_cancelCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_okCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController$17;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_okCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_cancelCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_backCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iput-object p6, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 738
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_text:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 742
    :goto_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

    iget-object v2, v0, Lcom/ghomesdk/gameplus/login/LoginController$17;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

    iget-object v4, v0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_okText:Ljava/lang/String;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$17;

    iget-object v5, v0, Lcom/ghomesdk/gameplus/login/LoginController$17;->val$_cancelText:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_okCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iget-object v7, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_cancelCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_backCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iget-object v9, p0, Lcom/ghomesdk/gameplus/login/LoginController$17$1;->val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-static/range {v2 .. v9}, Lcom/ghomesdk/gameplus/login/LoginController;->access$1000(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
