.class public Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "SmsLoginView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsLoginView"


# instance fields
.field private agreementCb:Landroid/widget/CheckBox;

.field private agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

.field private agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

.field private code:Landroid/widget/EditText;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

.field private enableBack:Z

.field private enterGame:Landroid/widget/TextView;

.field private getSmsCode:Landroid/widget/TextView;

.field private noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

.field private phone:Landroid/widget/EditText;

.field private phoneStr:Ljava/lang/String;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enableBack:Z

    .line 58
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phoneStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/CheckBox;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getSmsCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getPhoneStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->code:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    return-object p0
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startCountDownTimer()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u77ed\u4fe1\u767b\u5f55\u6d41\u7a0b"

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 5

    .line 70
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 72
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    const-string v0, "gl_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    .line 73
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$1;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Landroid/app/Activity;)V

    const-string v1, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {p2, v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 81
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$2;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Landroid/app/Activity;)V

    const-string v2, "\u9690\u79c1\u653f\u7b56"

    invoke-virtual {p2, v2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

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

    .line 90
    new-instance p2, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "gl_read_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_check"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_refuse"

    .line 96
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$3;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enableBack:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 9

    .line 107
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_sms_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 109
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$5;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;JJ)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 123
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "cb_login_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementCb:Landroid/widget/CheckBox;

    .line 129
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "et_input_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "et_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->code:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 132
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->code:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 135
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enterGame:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_get_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getSmsCode:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getSmsCode:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$6;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->tvCountryCode:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->tvCountryCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phoneStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$7;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enterGame:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_psd_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$9;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$9;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$10;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$10;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enableBack:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$11;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$11;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_app_theme_light"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->getPhoneStr()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    .line 212
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_get_voice_code"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$12;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$12;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->code:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->enterGame:Landroid/widget/TextView;

    invoke-static {v0, v1, v3}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 229
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->phoneStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_agreement"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 234
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 236
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->agreementCb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$13;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$13;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
