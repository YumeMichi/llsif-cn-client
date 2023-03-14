.class public Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "PwdLoginView.java"


# instance fields
.field private agreementCb:Landroid/widget/CheckBox;

.field private agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

.field private agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

.field private edPassword:Landroid/widget/EditText;

.field private edPhone:Landroid/widget/EditText;

.field private inputPhoneStr:Ljava/lang/String;

.field private noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->inputPhoneStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPhone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPassword:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9759\u6001\u5bc6\u7801\u767b\u5f55\u6d41\u7a0b"

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 5

    .line 55
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 57
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    const-string v0, "gl_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    .line 58
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$1;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;Landroid/app/Activity;)V

    const-string v1, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {p2, v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 66
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$2;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;Landroid/app/Activity;)V

    const-string v2, "\u9690\u79c1\u653f\u7b56"

    invoke-virtual {p2, v2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    const-string v0, "gl_span_blue_text"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {p2, v0, v3}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 75
    new-instance p2, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "gl_read_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_check"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$4;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_refuse"

    .line 81
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$3;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 92
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 93
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_login_password"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 96
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "et_input_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPhone:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "et_input_passowrd"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPassword:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 105
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 106
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->inputPhoneStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->tvCountryCode:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->tvCountryCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->inputPhoneStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "cb_login_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementCb:Landroid/widget/CheckBox;

    .line 111
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$6;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$7;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_forget_password"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_switch_sms_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$9;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$9;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_password_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_agreement"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 198
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->edPassword:Landroid/widget/EditText;

    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 200
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->agreementCb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$11;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$11;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
