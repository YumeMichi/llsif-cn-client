.class public Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.source "DeleAcctHesitateView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    .line 28
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    const-string v1, "gl_view_writtenoff_hesitate"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->replaceShowView(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    const-string v2, "tv_confirm_dele"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    const-string v2, "tv_cancel_dele"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$2;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$3;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    const-string v2, "tv_delete_tip1"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    const-string v2, "gl_dele_acct_tips3"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ghomesdk/gameplus/config/Config;->ACCT_DELE_PERIOD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u65f6\u95f4\u5360\u4f4d\u7b26"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
