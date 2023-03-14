.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$2;
.super Ljava/lang/Object;
.source "DeleAcctAgreementView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$2;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object p1

    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_CONDITION_VIEW:I

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showPageView(I)V

    return-void
.end method
