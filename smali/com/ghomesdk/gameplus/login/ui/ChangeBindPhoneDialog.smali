.class public Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "ChangeBindPhoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeBindPhoneDialog"


# instance fields
.field private act:Landroid/app/Activity;

.field private callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

.field private checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

.field private code:Landroid/widget/EditText;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

.field private getSmsCode:Landroid/widget/TextView;

.field protected initLayoutId:I

.field private phone:Landroid/widget/EditText;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    new-instance p2, Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-direct {p2}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;-><init>()V

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    .line 62
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 63
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const-string p2, "gl_view_bind_phone"

    .line 64
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->initLayoutId:I

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getSmsCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/EditText;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    return-object p0
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startCountDownTimer()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    .line 76
    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$1;

    sget v0, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;JJ)V

    iput-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    .line 89
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v1, "tv_bind"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_get_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getSmsCode:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getSmsCode:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_get_voice_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "et_input_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "et_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->code:Landroid/widget/EditText;

    .line 96
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 97
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->code:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 98
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "ll_tip"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "gl_app_theme_light"

    invoke-static {v4, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getPhoneStr()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const-string v8, "6"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->code:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Ljava/util/List;Landroid/widget/TextView;)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->checker:Lcom/ghomesdk/gameplus/utils/FastClickChecker;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/utils/FastClickChecker;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "tv_get_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "#"

    if-ne v0, v1, :cond_3

    .line 136
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v0, "gl_input_phone"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->isPhoneFormatWrong(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 144
    :cond_2
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getPhoneStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v2

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneStr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;

    invoke-direct {v8, p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V

    const-string v6, "6"

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    goto/16 :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "tv_bind"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/impl/ServerApi;->thirdAccountChangePhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    goto/16 :goto_0

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v3, "tv_get_voice_code"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 172
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 173
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->isPhoneFormatWrong(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 179
    :cond_6
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getPhoneStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->setPhoneNumber(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->getPhoneStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->show()V

    goto :goto_0

    .line 182
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 183
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v1, "gl_app_theme_light"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    .line 191
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CountryCodeDialog;->show()V

    goto :goto_0

    .line 192
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->act:Landroid/app/Activity;

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 193
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    const/4 v0, 0x5

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "\u6362\u7ed1\u53d6\u6d88"

    invoke-interface {p1, v0, v2, v1}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 194
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->dismiss()V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->init()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 213
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method
