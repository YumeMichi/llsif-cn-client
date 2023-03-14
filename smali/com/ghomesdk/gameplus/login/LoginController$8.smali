.class Lcom/ghomesdk/gameplus/login/LoginController$8;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->createLoginGuestDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
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

    .line 587
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 8

    .line 590
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "dlg_guestupgrade_text"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    .line 591
    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "dlg_guestupgrade_cancel"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dlg_guestupgrade_ok"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$900(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v6

    .line 592
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$800(Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    move-result-object v2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$8;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/LoginController;->access$700(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestUpgrade(Landroid/content/Context;ZLjava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
