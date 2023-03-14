.class public Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.source "DeleAcctRealInfoView.java"


# instance fields
.field private idEt:Landroid/widget/EditText;

.field private realNameEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->realNameEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->idEt:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 5

    .line 37
    invoke-super {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    .line 38
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    const-string v1, "gl_view_writtenoff_fill_realinfo"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->replaceShowView(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    const-string v2, "tv_next_step"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    const-string v3, "iv_close"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$2;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$2;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    const-string v3, "et_fill_real_name"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->realNameEt:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    const-string v3, "et_fill_id"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->idEt:Landroid/widget/EditText;

    .line 62
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->realNameEt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    const-string v4, "gl_input_cue"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 63
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->idEt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 64
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->idEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->realNameEt:Landroid/widget/EditText;

    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method
