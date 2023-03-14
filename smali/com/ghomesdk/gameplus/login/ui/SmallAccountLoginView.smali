.class public Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "SmallAccountLoginView.java"


# instance fields
.field private adapter:Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

.field private listView:Landroid/widget/ListView;

.field private smallAccount:Ljava/lang/String;

.field private smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->smallAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->smallAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;)Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->smallAccountModel:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->adapter:Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;)Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->adapter:Lcom/ghomesdk/gameplus/adapter/SmallAccountAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)Landroid/widget/ListView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->listView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5c0f\u53f7\u5217\u8868\u9875\u9762"

    return-object v0
.end method

.method public onClickAndroidBack()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method

.method public show()V
    .locals 5

    .line 38
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 39
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_small_account_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 40
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "lv_small_account"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->listView:Landroid/widget/ListView;

    .line 41
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_enter_game"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_back"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_close"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->listView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v4, "gl_app_theme_light"

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_view_small_account_head"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;->ctx:Landroid/app/Activity;

    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getLoginUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/SmallAccountLoginView;)V

    invoke-static {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/impl/ServerApi;->querySmallAccount(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method
