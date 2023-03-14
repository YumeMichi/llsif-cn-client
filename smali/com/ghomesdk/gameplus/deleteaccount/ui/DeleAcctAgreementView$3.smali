.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;
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

    .line 83
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->access$000(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_REAL_INFO_VIEW:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_AGREEMENT_VIEW:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showPageView(I)V

    goto :goto_2

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u5e76\u52fe\u9009\u5df2\u9605\u8bfb\u786e\u8ba4\u4e0a\u8ff0\u534f\u8bae"

    goto :goto_1

    :cond_2
    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u5e76\u52fe\u9009\u5df2\u9605\u8bfb\u786e\u8ba4\u4e0a\u8ff0\u6761\u4ef6"

    :goto_1
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
