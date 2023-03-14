.class Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;
.super Ljava/lang/Object;
.source "AgreementOperationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "agreement_checkbox_selected"

    invoke-static {p1, v1, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 67
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;->onOperateCallback(Z)V

    .line 68
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->cancel()V

    return-void
.end method
