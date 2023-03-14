.class public Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;
.super Landroid/app/Dialog;
.source "QRCodeLoginConfirmDialog.java"


# instance fields
.field private final context:Landroid/app/Activity;

.field private initLayoutId:I

.field private mLoginGameName:Ljava/lang/String;

.field private mQrCodeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    .line 38
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const-string p2, "gl_qrcode_login_confirm"

    .line 39
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->initLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->mQrCodeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->reportCancelLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    const-string v1, "login_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    const-string v2, "login_confirm"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    const-string v3, "tv_tip_game_name"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    const-string v4, "iv_logo"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 72
    iget-object v4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->BRAND_LOGO:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->showImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 74
    iget-object v3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->mLoginGameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v2, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private reportCancelLogin()V
    .locals 3

    const-string v0, "QRCodeLoginConfirmDialog"

    const-string v1, "call reportCancelLogin"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->mQrCodeStr:Ljava/lang/String;

    new-instance v2, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V

    invoke-static {v0, v0, v1, v2}, Lcom/ghomesdk/gameplus/impl/ServerApi;->cancelScanLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/sqo/eventcollection/EventViewUtil;->report(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->init()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method setInitData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->mLoginGameName:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->mQrCodeStr:Ljava/lang/String;

    return-void
.end method
