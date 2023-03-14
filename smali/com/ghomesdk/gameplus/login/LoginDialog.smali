.class public Lcom/ghomesdk/gameplus/login/LoginDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "LoginDialog.java"


# static fields
.field public static final MODE_LOGIN:I = 0x1

.field public static final MODE_PAY:I = 0x2

.field public static final MODE_UPGRADE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoginDialog"

.field private static hasShowDialog:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    const/4 p2, 0x1

    .line 39
    iput p2, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->mode:I

    .line 43
    iput p3, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->mode:I

    .line 44
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 45
    check-cast p1, Landroid/app/Activity;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->activity:Landroid/app/Activity;

    .line 47
    :cond_0
    iput-object p4, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/LoginDialog;)Lcom/ghomesdk/gameplus/callback/LoginCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)Lcom/ghomesdk/gameplus/callback/LoginCallback;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/LoginDialog;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->mode:I

    return p0
.end method

.method static synthetic access$201(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 28
    sput-boolean p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->hasShowDialog:Z

    return p0
.end method

.method static synthetic access$401(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/LoginDialog;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$601(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$701(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$801(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$901(Lcom/ghomesdk/gameplus/login/LoginDialog;)V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method private getLoginCallback()Lcom/ghomesdk/gameplus/callback/LoginCallback;
    .locals 1

    .line 114
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginDialog$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/LoginDialog$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->cancel()V

    const-string v0, "LoginDialog"

    const-string v1, "cancel"

    .line 97
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 4

    const-string v0, "LoginDialog"

    const-string v1, "dismiss"

    .line 85
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/ghomesdk/gameplus/login/LoginDialog;->hasShowDialog:Z

    .line 87
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    if-eqz v0, :cond_0

    const-string v1, "-100"

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u767b\u5f55\u53d6\u6d88"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LoginDialog"

    const-string v1, "onCreate"

    .line 52
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 103
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doCancel()V

    const/4 p1, 0x1

    return p1

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "LoginDialog"

    const-string v1, "onStart"

    .line 59
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "LoginDialog"

    const-string v1, "onStop"

    .line 65
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onStop()V

    return-void
.end method

.method public show()V
    .locals 3

    const-string v0, "LoginDialog"

    const-string v1, "show"

    .line 71
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/ghomesdk/gameplus/login/LoginDialog;->hasShowDialog:Z

    .line 74
    iget v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->mode:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getLoginCallback()Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->doStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, v1, :cond_1

    .line 77
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getLoginCallback()Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->doPayStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, v1, :cond_2

    .line 79
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDialog;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->getLoginCallback()Lcom/ghomesdk/gameplus/callback/LoginCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->doUpgradeStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showView(I)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->setContentView(I)V

    return-void
.end method
