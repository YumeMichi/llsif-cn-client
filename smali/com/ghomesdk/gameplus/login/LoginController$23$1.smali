.class Lcom/ghomesdk/gameplus/login/LoginController$23$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController$23;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/LoginController$23;

.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController$23;ILjava/lang/String;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$23;

    iput p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$23;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginController$23;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->this$1:Lcom/ghomesdk/gameplus/login/LoginController$23;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginController$23;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    iget v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->val$code:I

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
