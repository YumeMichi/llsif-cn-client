.class public Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.source "DeleAcctAgreementView.java"


# instance fields
.field private agreementCb:Landroid/widget/CheckBox;

.field private deleAgreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

.field private final enableBack:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->enableBack:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)Landroid/widget/CheckBox;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->agreementCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->enableBack:Z

    return p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    .line 41
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->enableBack:Z

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v0, "gl_dele_acct_tips2"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleAgreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    .line 43
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleAgreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance p2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;

    invoke-direct {p2, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V

    const-string v0, "\u300a\u76db\u8da3\u6e38\u620f\u901a\u884c\u8bc1\u8d26\u53f7\u6ce8\u9500\u534f\u8bae\u300b"

    invoke-virtual {p1, v0, p2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleAgreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "gl_important_color"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 4

    .line 57
    invoke-super {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    const-string v1, "gl_view_writtenoff_condition"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->replaceShowView(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "cb_dele_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->agreementCb:Landroid/widget/CheckBox;

    .line 62
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->enableBack:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$2;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "tv_delete_tiptitle"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "gl_dele_acct_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "tv_delete_tip1"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleAgreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "tv_dele_check_txt1"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "gl_dele_acct_checktxt2"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "tv_check"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$3;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v3, "iv_close"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$4;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$4;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->agreementCb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->agreementCb:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;

    invoke-direct {v2, p0, v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
