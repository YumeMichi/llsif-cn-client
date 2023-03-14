.class Lcom/ghomesdk/gameplus/login/LoginController$21;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->showConfirmUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$21;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$21;->val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 781
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$21;->val$_closeCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const-string v0, ""

    .line 782
    invoke-interface {p1, p2, v0}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
