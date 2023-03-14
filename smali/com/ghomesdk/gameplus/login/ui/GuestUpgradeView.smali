.class public Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "GuestUpgradeView.java"


# instance fields
.field private accDesc:Ljava/lang/String;

.field private confirmBtn:Landroid/widget/TextView;

.field private describeTv:Landroid/widget/TextView;

.field private guestId:Ljava/lang/String;

.field private nameEt:Landroid/widget/EditText;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->phone:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->accDesc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->nameEt:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6e38\u5ba2\u5347\u7ea7-\u547d\u540d"

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 6

    .line 37
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 38
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_guest_upgrade"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 39
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_set_nick_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->phone:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v4, "gl_important_color"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->phone:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v3, "tv_guest_upgrade_describe"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->describeTv:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->describeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "et_guest_upgrade_name"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->nameEt:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->nameEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->accDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->nameEt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_input_cue"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/uikit/UIKit;->initHint(Landroid/app/Dialog;Landroid/widget/EditText;I)V

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_guest_upgrade_confirm"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->confirmBtn:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->confirmBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->nameEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->confirmBtn:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/uikit/BtnBgHelper;->setBtnBg(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method
