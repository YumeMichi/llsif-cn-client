.class public Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;
.super Landroid/app/Dialog;
.source "GeetestCodePage.java"


# static fields
.field private static final GEETEST_CHALLENGE:Ljava/lang/String; = "geetest_challenge"

.field private static final GEETEST_SECCODE:Ljava/lang/String; = "geetest_seccode"

.field private static final GEETEST_VALIDATE:Ljava/lang/String; = "geetest_validate"


# instance fields
.field private TAG:Ljava/lang/String;

.field private callType:Ljava/lang/String;

.field private captchaPicData:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private geetestButton:Lcom/geetest/sdk/views/GT3GeetestButton;

.field private gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

.field private gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

.field private guid:Ljava/lang/String;

.field private final initLayoutId:I

.field private mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    const-string v0, "gl_app_theme_light"

    .line 45
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const-class v0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->context:Landroid/content/Context;

    const-string v0, "geetest_validate"

    .line 47
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->initLayoutId:I

    .line 48
    iput-object p3, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->guid:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->phone:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->callType:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->captchaPicData:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->guid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->callType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Lcom/geetest/sdk/GT3GeetestUtils;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->captchaPicData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)Lcom/geetest/sdk/GT3ConfigBean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method

.method private customVerity()V
    .locals 2

    .line 68
    new-instance v0, Lcom/geetest/sdk/GT3GeetestUtils;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/geetest/sdk/GT3GeetestUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    .line 70
    new-instance v0, Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0}, Lcom/geetest/sdk/GT3ConfigBean;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    .line 74
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setPattern(I)V

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setCanceledOnTouchOutside(Z)V

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setTimeout(I)V

    .line 80
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setWebviewTimeout(I)V

    .line 82
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    new-instance v1, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage$1;-><init>(Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setListener(Lcom/geetest/sdk/GT3Listener;)V

    .line 222
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3GeetestUtils;->init(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 223
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->geetestButton:Lcom/geetest/sdk/views/GT3GeetestButton;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->setGeetestUtils(Lcom/geetest/sdk/GT3GeetestUtils;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->setContentView(I)V

    .line 63
    iget-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->context:Landroid/content/Context;

    const-string v0, "btn_geetest"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geetest/sdk/views/GT3GeetestButton;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->geetestButton:Lcom/geetest/sdk/views/GT3GeetestButton;

    .line 64
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodePage;->customVerity()V

    return-void
.end method
