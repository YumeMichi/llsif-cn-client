.class public Lcom/ghomesdk/gameplus/login/ui/ActivateView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "ActivateView.java"


# instance fields
.field private activateEt:Landroid/widget/EditText;

.field private hasBack:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->hasBack:Z

    .line 22
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->hasBack:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->activateEt:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6fc0\u6d3b\u7801"

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->hasBack:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_activate"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 36
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ActivateView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ActivateView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->hasBack:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ActivateView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ActivateView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v2, "et_input_activate"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->activateEt:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_activate_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->activateEt:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/TextView;)V

    .line 53
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->activateEt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    const-string v4, "gl_input_cue"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 54
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
