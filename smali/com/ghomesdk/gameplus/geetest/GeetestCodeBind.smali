.class public Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;
.super Ljava/lang/Object;
.source "GeetestCodeBind.java"


# static fields
.field private static final GEETEST_CHALLENGE:Ljava/lang/String; = "geetest_challenge"

.field private static final GEETEST_SECCODE:Ljava/lang/String; = "geetest_seccode"

.field private static final GEETEST_VALIDATE:Ljava/lang/String; = "geetest_validate"


# instance fields
.field private TAG:Ljava/lang/String;

.field private callType:Ljava/lang/String;

.field private captchaData:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

.field private gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

.field private guid:Ljava/lang/String;

.field private mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->guid:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->phone:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->callType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->captchaData:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/geetest/sdk/GT3GeetestUtils;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->guid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->callType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->mCallback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->captchaData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)Lcom/geetest/sdk/GT3ConfigBean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method


# virtual methods
.method public customVerity()V
    .locals 2

    .line 48
    new-instance v0, Lcom/geetest/sdk/GT3GeetestUtils;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/geetest/sdk/GT3GeetestUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    .line 50
    new-instance v0, Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0}, Lcom/geetest/sdk/GT3ConfigBean;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setPattern(I)V

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setCanceledOnTouchOutside(Z)V

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setTimeout(I)V

    .line 59
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setWebviewTimeout(I)V

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    new-instance v1, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind$1;-><init>(Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setListener(Lcom/geetest/sdk/GT3Listener;)V

    .line 184
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3GeetestUtils;->init(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 186
    iget-object v0, p0, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3GeetestUtils;->startCustomFlow()V

    return-void
.end method
