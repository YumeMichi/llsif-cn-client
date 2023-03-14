.class public Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.source "DeleAcctCompleteView.java"


# instance fields
.field private final timeInfo:Ljava/lang/String;

.field private tipsSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->timeInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 4

    .line 49
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    .line 50
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->ctx:Landroid/content/Context;

    const-string p2, "gl_dele_acct_tips4"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->timeInfo:Ljava/lang/String;

    const-string v0, "\u65f6\u95f4\u5360\u4f4d\u7b26"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->ACCT_DELE_PERIOD:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u5929\u6570\u5360\u4f4d\u7b26"

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->tipsSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    .line 52
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->tipsSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->ctx:Landroid/content/Context;

    const-string v2, "gl_important_color"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->timeInfo:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/ghomesdk/gameplus/config/Config;->ACCT_DELE_PERIOD:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    .line 33
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    const-string v1, "gl_view_writtenoff_complete"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->replaceShowView(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->ctx:Landroid/content/Context;

    const-string v2, "tv_comp"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->ctx:Landroid/content/Context;

    const-string v2, "tv_delete_tip_comp"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->tipsSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
