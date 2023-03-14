.class public Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "ResetPasswordInputViewNew.java"


# instance fields
.field private countryCodeTv:Landroid/widget/TextView;

.field private countryStr:Ljava/lang/String;

.field private dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

.field private enterGameTv:Landroid/widget/TextView;

.field private getSmsCodeTv:Landroid/widget/TextView;

.field private getVoiceCodeTv:Landroid/widget/TextView;

.field private inputPsdEt:Landroid/widget/EditText;

.field private inputSmsCodeEt:Landroid/widget/EditText;

.field private pageName:Ljava/lang/String;

.field private phoneNumberEt:Landroid/widget/EditText;

.field private phoneNumberStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->pageName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->pageName:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryStr:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getSmsCodeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryCodeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputSmsCodeEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputPsdEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    return-object p0
.end method

.method private startCountDownTimer()V
    .locals 8

    .line 152
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getSmsCodeTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$7;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;JJ)V

    .line 164
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$7;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method

.method public show()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_reset_password"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "et_reset_psd_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputSmsCodeEt:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_get_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getSmsCodeTv:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getSmsCodeTv:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryCodeTv:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "et_reset_psd_input_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberEt:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "tv_pagename"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryCodeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "et_reset_psd_input_psd"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputPsdEt:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->enterGameTv:Landroid/widget/TextView;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberEt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputSmsCodeEt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputPsdEt:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->enterGameTv:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Ljava/util/List;Landroid/widget/TextView;)V

    .line 115
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->inputPsdEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 116
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->enterGameTv:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "tv_reset_psd_get_voice_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getVoiceCodeTv:Landroid/widget/TextView;

    .line 124
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v3, "gl_app_theme_light"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->countryStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    .line 125
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->getVoiceCodeTv:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
