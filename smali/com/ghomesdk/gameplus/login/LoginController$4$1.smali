.class Lcom/ghomesdk/gameplus/login/LoginController$4$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController$4;->showImageCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/LoginController$4;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$4;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$guid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 279
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$4;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginController$4;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$guid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->val$type:Ljava/lang/String;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$4;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginController$4;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/LoginController$4$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$4;

    iget-object v6, v6, Lcom/ghomesdk/gameplus/login/LoginController$4;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-static {v0, v6}, Lcom/ghomesdk/gameplus/login/LoginController;->access$000(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object v7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController;->access$100(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method
