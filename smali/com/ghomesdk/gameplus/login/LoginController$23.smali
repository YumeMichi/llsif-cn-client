.class Lcom/ghomesdk/gameplus/login/LoginController$23;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$23;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$23;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 803
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$23;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginController$23$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghomesdk/gameplus/login/LoginController$23$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$23;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
