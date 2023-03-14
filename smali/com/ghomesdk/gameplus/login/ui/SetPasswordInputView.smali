.class public Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "SetPasswordInputView.java"


# instance fields
.field private countryCodeTv:Landroid/widget/TextView;

.field private countryStr:Ljava/lang/String;

.field private enterGameTv:Landroid/widget/TextView;

.field private inputPsdEt:Landroid/widget/EditText;

.field private pageName:Ljava/lang/String;

.field private phoneNumberStr:Ljava/lang/String;

.field private phoneNumberTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->pageName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->pageName:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->countryStr:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->phoneNumberStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->inputPsdEt:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_set_password_input"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 41
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->countryCodeTv:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->phoneNumberTv:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_pagename"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->countryCodeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->countryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->phoneNumberTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->phoneNumberStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "et_reset_psd_input_psd"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->inputPsdEt:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->enterGameTv:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->inputPsdEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->enterGameTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 62
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->inputPsdEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->enterGameTv:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
