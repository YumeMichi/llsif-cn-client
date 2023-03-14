.class public Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "FillRealBindPhoneInfoView.java"


# instance fields
.field private code:Landroid/widget/EditText;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private getSmsCode:Landroid/widget/TextView;

.field private hasBack:Z

.field private idEt:Landroid/widget/EditText;

.field private phone:Landroid/widget/EditText;

.field private realNameEt:Landroid/widget/EditText;

.field private tvCountryCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->hasBack:Z

    .line 43
    iput-boolean p2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->hasBack:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->realNameEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->idEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->phone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->code:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->getSmsCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->tvCountryCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->getPhoneStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->startCountDownTimer()V

    return-void
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->tvCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->phone:Landroid/widget/EditText;

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

    .line 182
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->getSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u52a0\u7ed1\u5b9a\u624b\u673a\u9875\u9762"

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->hasBack:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 10

    .line 55
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 56
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_realname_bind"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->hasBack:Z

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "et_fill_real_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->realNameEt:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "et_fill_id"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->idEt:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->realNameEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->idEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_confirm_real_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->idEt:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->realNameEt:Landroid/widget/EditText;

    invoke-static {v1, v4, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 79
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v5, "iv_fill_name_toast"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;

    invoke-direct {v4, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$5;

    sget v1, Lcom/ghomesdk/gameplus/config/Config;->SMS_WAIT_TIME:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;JJ)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 116
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v4, "tv_get_sms_code"

    invoke-static {v2, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->getSmsCode:Landroid/widget/TextView;

    .line 118
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->getSmsCode:Landroid/widget/TextView;

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$6;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v4, "et_input_phone"

    invoke-static {v2, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->phone:Landroid/widget/EditText;

    .line 148
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v4, "et_sms_code"

    invoke-static {v2, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->code:Landroid/widget/EditText;

    .line 149
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->phone:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 150
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->code:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 151
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_country_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->tvCountryCode:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    const-string v3, "view_country_code"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$7;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->phone:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->code:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->realNameEt:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->idEt:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Ljava/util/List;Landroid/widget/TextView;)V

    return-void
.end method
