.class Lcom/ghomesdk/gameplus/login/LoginController$9;
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

    .line 596
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$9;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 599
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doClose()V

    return-void
.end method
