.class public Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.source "DeleAcctSendSmsView.java"


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private etPhone:Landroid/widget/EditText;

.field private etSmsCode:Landroid/widget/EditText;

.field private getSmsCode:Landroid/widget/TextView;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getSmsCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etPhone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getPhoneStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etSmsCode:Landroid/widget/EditText;

    return-object p0
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etPhone:Landroid/widget/EditText;

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

    .line 170
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 8

    .line 57
    invoke-super {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->show()V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    const-string v1, "gl_view_writtenoff_send_sms"

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->replaceShowView(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "et_input_phone"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etPhone:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "et_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etSmsCode:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "tv_get_sms_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getSmsCode:Landroid/widget/TextView;

    .line 63
    new-instance v0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$1;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;JJ)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "tv_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->tvCountryCode:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->tvCountryCode:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "view_country_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$2;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getSmsCode:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->getPhoneStr()Ljava/lang/String;

    move-result-object v6

    const-string v7, "7"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v3, "tv_get_voice_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;

    invoke-direct {v2, p0, v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v2, "tv_next_step"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    new-instance v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v3, "iv_close"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$6;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$6;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etPhone:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v4, "gl_input_cue"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 164
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etSmsCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 165
    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->etSmsCode:Landroid/widget/EditText;

    invoke-static {v1, v2, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method
