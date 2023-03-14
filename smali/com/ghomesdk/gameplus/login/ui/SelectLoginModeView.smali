.class public Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;
.super Lcom/ghomesdk/gameplus/login/ui/LoginView;
.source "SelectLoginModeView.java"


# instance fields
.field private agreementCb:Landroid/widget/CheckBox;

.field private agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

.field private agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

.field private lLFirstLoginBt:Landroid/widget/LinearLayout;

.field private lLSecondLoginBt:Landroid/widget/LinearLayout;

.field private noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

.field private originBtConfigNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originButtonBgResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originButtonLeftResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originButtonName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originButtonTextColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private originIcConfigNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originIconNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originIconTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherLoginLeftAnim:Landroid/view/animation/Animation;

.field private otherLoginLeftIv:Landroid/widget/ImageView;

.field private otherLoginRightAnim:Landroid/view/animation/Animation;

.field private otherLoginRightIv:Landroid/widget/ImageView;

.field private otherLoginTextAnim:Landroid/view/animation/Animation;

.field private otherLoginTv:Landroid/widget/TextView;

.field private otherLoginView:Landroid/view/View;

.field private selectOtherLoginView:Landroid/view/View;

.field private showLoginModeAnim:Landroid/view/animation/Animation;

.field private tvFirstLoginBt:Landroid/widget/TextView;

.field private tvSecondLoginBt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementDialog:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->showLoginModeAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->weGameLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginLeftAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginLeftIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginRightAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginRightIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/view/animation/Animation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginTextAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private agreementInit()V
    .locals 6

    .line 93
    new-instance v0, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    .line 94
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    const-string v2, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v0, v2, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    const-string v3, "\u9690\u79c1\u653f\u7b56"

    invoke-virtual {v0, v3, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextClick(Ljava/lang/String;Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v5, "gl_span_blue_text"

    invoke-static {v4, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_read_agreement"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_check"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$4;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_refuse"

    .line 117
    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$3;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->noCheckDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    return-void
.end method

.method private loginBtIconInit()V
    .locals 8

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    .line 129
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    const-string v1, "official"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    const-string v2, "daoyu"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    const-string v3, "wegame"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    const-string v4, "qq"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    const-string v5, "weibo"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    const-string v6, "weixin"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    sget v7, Lcom/ghomesdk/gameplus/login/model/SelectLoginModeConstant;->MODE_ICON_MODE_NUM:I

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    .line 141
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    const-string v7, "gl_weixin"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    const-string v7, "gl_qq"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    const-string v7, "gl_sina"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    const-string v7, "gl_wegame"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    sget v7, Lcom/ghomesdk/gameplus/login/model/SelectLoginModeConstant;->MODE_ICON_MODE_NUM:I

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    .line 147
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    const-string v7, "\u5fae\u4fe1"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    const-string v6, "QQ"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    const-string v4, "\u5fae\u535a"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    const-string v4, "WeGame"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    .line 153
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    const-string v5, "gl_selector_bt_main"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    const-string v5, "gl_selector_bt_dy"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    const-string v5, "gl_selector_bt_wg"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    .line 158
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    const-string v5, ""

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    const-string v5, "gl_daoyu_land"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    const-string v5, "gl_wegame_land"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    .line 163
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    const-string v5, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    const-string v5, "\u53e8\u9c7c\u767b\u5f55"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    const-string v5, "WeGame\u767b\u5f55"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    .line 168
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    .line 176
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 177
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private showDefaultOfficial()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_selector_bt_main"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    const-string v1, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    const-string v2, "official"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showOtherLogin()V
    .locals 3

    .line 453
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->DISPLAY_THRIDACCOUNT:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 454
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_1
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private weGameLogin()V
    .locals 4

    .line 448
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_custom_dialog_fullScreen"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;-><init>(Landroid/content/Context;I)V

    .line 449
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->show()V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u767b\u5f55\u9996\u9875"

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 86
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementInit()V

    .line 88
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginBtIconInit()V

    return-void
.end method

.method public onClickAndroidBack()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 11

    .line 187
    invoke-super {p0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    .line 188
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "gl_view_select_login_mode"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->showView(I)V

    .line 191
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "iv_logo"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 192
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->BRAND_LOGO:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->showImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "view_select_other_login"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 196
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "ll_login_mode_first"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    .line 201
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "tv_login_first"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    .line 202
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "tv_login_mode_second"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    .line 203
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "tv_login_second"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    .line 204
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "tv_login_mode_other"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginTv:Landroid/widget/TextView;

    .line 205
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "cb_login_agreement"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementCb:Landroid/widget/CheckBox;

    .line 206
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "gl_select_login_mode_left"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginLeftAnim:Landroid/view/animation/Animation;

    .line 207
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "gl_select_login_mode_right"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginRightAnim:Landroid/view/animation/Animation;

    .line 208
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "gl_select_login_mode_text_scale"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginTextAnim:Landroid/view/animation/Animation;

    .line 209
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "gl_show_select_login_mode"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->showLoginModeAnim:Landroid/view/animation/Animation;

    .line 210
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "iv_other_login_left"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginLeftIv:Landroid/widget/ImageView;

    .line 211
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "iv_other_login_right"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginRightIv:Landroid/widget/ImageView;

    .line 212
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-static {v6, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    .line 213
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v6, "view_other_login"

    invoke-static {v5, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    .line 214
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v6, "gl_version"

    invoke-static {v5, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v5, "V8.5.5.0"

    .line 215
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->selectOtherLoginView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v7, "iv_close"

    invoke-static {v6, v7}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$5;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$5;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->otherLoginView:Landroid/view/View;

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$8;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length v2, v2

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_a

    .line 291
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v9, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    sget-object v10, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 295
    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    sget-object v9, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v9, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v9, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v10, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 303
    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 304
    aget-object v9, v8, v4

    if-eqz v9, :cond_2

    .line 305
    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 306
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 308
    :cond_2
    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 316
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 318
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    sget-object v9, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_5
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 323
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    :cond_6
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 326
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v3, v8, v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 328
    aget-object v5, v3, v4

    if-eqz v5, :cond_7

    .line 329
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 330
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    :cond_7
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 334
    :cond_8
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvSecondLoginBt:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 337
    :cond_9
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 339
    :cond_a
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v3, :cond_f

    .line 340
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originBtConfigNames:Ljava/util/ArrayList;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 341
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonName:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 344
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonTextColor:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    :cond_b
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonBgResMap:Ljava/util/Map;

    sget-object v9, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 347
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLFirstLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 349
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originButtonLeftResMap:Ljava/util/Map;

    sget-object v8, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 350
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 351
    aget-object v6, v3, v4

    if-eqz v6, :cond_c

    .line 352
    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 353
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 355
    :cond_c
    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 357
    :cond_d
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->tvFirstLoginBt:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_e
    :goto_1
    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->lLSecondLoginBt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 363
    :cond_f
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_10

    .line 364
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->showDefaultOfficial()V

    .line 370
    :cond_10
    :goto_2
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_13

    .line 371
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_ICONS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_12

    aget-object v6, v2, v5

    .line 372
    iget-object v7, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIcConfigNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 373
    new-instance v7, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;

    iget-object v8, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconTextMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->originIconNameMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 377
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 379
    :cond_13
    new-instance v2, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    new-instance v5, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-direct {v2, v3, v1, v5}, Lcom/ghomesdk/gameplus/adapter/LoginIconAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;)V

    .line 419
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->loginDialog:Lcom/ghomesdk/gameplus/login/LoginDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v2, "tv_agreement"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementSpan:Lcom/ghomesdk/gameplus/utils/MySpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 425
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 427
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementCb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$10;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$10;-><init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 434
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->showOtherLogin()V

    return-void
.end method
