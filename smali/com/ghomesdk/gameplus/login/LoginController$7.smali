.class Lcom/ghomesdk/gameplus/login/LoginController$7;
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

    .line 580
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$7;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$7;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->access$800(Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$7;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$700(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
