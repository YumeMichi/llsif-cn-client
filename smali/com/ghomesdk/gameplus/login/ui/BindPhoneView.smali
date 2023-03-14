.class public Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "BindPhoneView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BindPhoneDialog "

.field public static hasShowDialog:Z


# instance fields
.field private act:Landroid/app/Activity;

.field private code:Landroid/widget/EditText;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

.field private getSmsCode:Landroid/widget/TextView;

.field private mBindedPhone:Ljava/lang/String;

.field private phone:Landroid/widget/EditText;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->mBindedPhone:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->mBindedPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getSmsCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->code:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getPhoneStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    return-object p0
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

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

    .line 202
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 9

    .line 52
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_bind_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 55
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$1;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;JJ)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 68
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v2, "tv_bind"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "tv_get_sms_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getSmsCode:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getSmsCode:Landroid/widget/TextView;

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "tv_get_voice_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$4;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "et_input_phone"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

    .line 125
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "et_sms_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->code:Landroid/widget/EditText;

    .line 126
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v4, "gl_input_cue"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 127
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->code:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 128
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->mBindedPhone:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->mBindedPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "tv_country_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->tvCountryCode:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->ctx:Landroid/app/Activity;

    const-string v3, "view_country_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 133
    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$5;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "cb_no_remind"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 150
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v4, "tv_no_remind"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const/4 v4, 0x0

    const-string v5, "KEY_THIRD_BIND_PHONE_REFUSE_DAYS"

    invoke-static {v3, v5, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u65e5\u5185\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v5, "tv_refuse"

    invoke-static {v3, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    new-instance v3, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;

    invoke-direct {v3, p0, v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v5, "iv_close"

    invoke-static {v3, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    new-instance v3, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;

    invoke-direct {v3, p0, v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "ll_tip"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v3, "KEY_LOGIN_SKIP_BIND"

    invoke-static {v2, v3, v4}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_1
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->act:Landroid/app/Activity;

    const-string v2, "gl_app_theme_light"

    invoke-static {v4, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->getPhoneStr()Ljava/lang/String;

    move-result-object v7

    const-string v8, "5"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    .line 197
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->code:Landroid/widget/EditText;

    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method
