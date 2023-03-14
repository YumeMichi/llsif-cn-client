.class public Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "InputGraphicVerCodeDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field private checkCodeGuid:Ljava/lang/String;

.field private checkCodeUrl:Ljava/lang/String;

.field private codePic:Landroid/widget/ImageView;

.field private confirmBtn:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private inputCodeEt:Landroid/widget/EditText;

.field private loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

.field private phone:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private voiceMsg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "InputGraphicVerCodeDialog"

    .line 30
    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->TAG:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeGuid:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeUrl:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    .line 49
    iput-object p4, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->phone:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->type:Ljava/lang/String;

    .line 51
    iput-boolean p8, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->voiceMsg:Z

    .line 52
    iput-object p9, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    .line 53
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->codePic:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->inputCodeEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeGuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeGuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->voiceMsg:Z

    return p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u56fe\u5f62\u9a8c\u8bc1\u7801"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v0, "gl_dialog_input_graphic_ver_code"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->setCancelable(Z)V

    .line 63
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v0, "iv_close"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v0, "et_input_graphic_ver_code"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->inputCodeEt:Landroid/widget/EditText;

    .line 70
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->inputCodeEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v2, "gl_input_cue"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 71
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v0, "tv_graphic_ver_code_confirm"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->confirmBtn:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->context:Landroid/content/Context;

    const-string v0, "iv_graphic_ver_code"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->codePic:Landroid/widget/ImageView;

    .line 73
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->codePic:Landroid/widget/ImageView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->codePic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->checkCodeUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->showImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->confirmBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;-><init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->inputCodeEt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->confirmBtn:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method
