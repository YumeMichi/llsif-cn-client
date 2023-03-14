.class public Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "QuickLoginView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

.field private agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

.field private isGuest:Z

.field private noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

.field private quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

.field private selectPosition:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    const-string v0, "QuickLoginView"

    .line 34
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->selectPosition:I

    .line 39
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->isGuest:Z

    .line 84
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    .line 85
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->userId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->isGuest:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->isGuest:Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->selectPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->selectPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->adapter:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->userId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->isGuest:Z

    return p0
.end method

.method static synthetic access$602(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->isGuest:Z

    return p1
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5feb\u901f\u767b\u5f55\u9996\u9875"

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 5

    .line 47
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 49
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    const-string v0, "gl_agreement"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V

    const-string v1, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {p2, v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 58
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$2;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V

    const-string v2, "\u9690\u79c1\u653f\u7b56"

    invoke-virtual {p2, v2, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    const-string v0, "gl_span_blue_text"

    .line 66
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

    .line 67
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "gl_read_agreement"

    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_check"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$4;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    const-string v0, "gl_refuse"

    .line 72
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 5

    .line 104
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 105
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_quick_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$6;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "lv_quick_login_account"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 126
    new-instance v1, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->quickLoginModel:Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    new-instance v4, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;

    invoke-direct {v4, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Lcom/ghomesdk/gameplus/callback/DeleteQuickLoginCallback;)V

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->adapter:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    .line 155
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->adapter:Lcom/ghomesdk/gameplus/adapter/QuickLoginAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$8;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_quick_login_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$9;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_other_account_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$10;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$10;-><init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
