.class public Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "FillRealInfoView.java"


# instance fields
.field private force:Z

.field private forpay:Z

.field private hasBack:Z

.field private idEt:Landroid/widget/EditText;

.field private mRealInfoNotification:Ljava/lang/String;

.field private realNameEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->hasBack:Z

    .line 25
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->forpay:Z

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->mRealInfoNotification:Ljava/lang/String;

    .line 29
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->force:Z

    .line 30
    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->hasBack:Z

    .line 31
    iput-boolean p3, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->forpay:Z

    .line 32
    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->mRealInfoNotification:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->realNameEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->idEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->forpay:Z

    return p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u9875\u9762"

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->hasBack:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 45
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 46
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_fill_real_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 47
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_real_tip"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->mRealInfoNotification:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->mRealInfoNotification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->forpay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->hasBack:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "iv_close"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_cancel_real_name"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->force:Z

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "et_fill_real_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->realNameEt:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "et_fill_id"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->idEt:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->realNameEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->idEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_confirm_real_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->idEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->realNameEt:Landroid/widget/EditText;

    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 81
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "iv_fill_name_toast"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
