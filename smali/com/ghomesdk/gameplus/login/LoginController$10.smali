.class Lcom/ghomesdk/gameplus/login/LoginController$10;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->createPayGuestUpgradeDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 3

    .line 610
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "dlg_guestupgrade_text"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    .line 611
    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dlg_guestupgrade_cancel"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dlg_guestupgrade_ok"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$900(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p1

    .line 612
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/LoginController;->access$800(Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$10;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->access$700(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickPayGuestUpgrade(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
