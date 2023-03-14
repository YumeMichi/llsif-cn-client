.class Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;
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

    .line 72
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;->onOperateCallback(Z)V

    .line 76
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->cancel()V

    return-void
.end method
