.class public Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "VoiceCodeDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private desTv:Landroid/widget/TextView;

.field private getVoiceCodeTv:Landroid/widget/TextView;

.field private phone:Ljava/lang/String;

.field private remindTv:Landroid/widget/TextView;

.field private smsType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    .line 35
    iput-object p4, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->phone:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->smsType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->smsType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->getVoiceCodeTv:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bed\u97f3\u9a8c\u8bc1\u7801"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->setCancelable(Z)V

    .line 48
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    const-string v1, "gl_dialog_voice_code"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    const-string v1, "tv_dialog_voice_code_des"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->desTv:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    const-string v1, "tv_dialog_voice_code_remind"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->remindTv:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    const-string v1, "tv_dialog_get_voice_code"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->getVoiceCodeTv:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->context:Landroid/content/Context;

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->desTv:Landroid/widget/TextView;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_ONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice tip two = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_TWO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",boolean = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_TWO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceCodeDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_TWO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->remindTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->remindTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e29\u99a8\u63d0\u793a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->VOICE_TIP_TWO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->remindTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    sget-boolean p1, Lcom/ghomesdk/gameplus/config/Config;->VOICE_BUTTON:Z

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->getVoiceCodeTv:Landroid/widget/TextView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->getVoiceCodeTv:Landroid/widget/TextView;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->getVoiceCodeTv:Landroid/widget/TextView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog$3;-><init>(Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->phone:Ljava/lang/String;

    return-void
.end method
