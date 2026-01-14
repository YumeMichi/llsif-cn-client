.class public Lcom/ghomesdk/gameplus/login/LoginController;
.super Ljava/lang/Object;
.source "LoginController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginController"

.field private static instance:Lcom/ghomesdk/gameplus/login/LoginController;


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

.field private confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

.field private dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

.field private dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

.field private dlgPage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    .line 55
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    .line 56
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgPage:Ljava/util/Set;

    .line 60
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    .line 62
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 64
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    .line 90
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    .line 92
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgPage:Ljava/util/Set;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgPage:Ljava/util/Set;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgPage:Ljava/util/Set;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/ghomesdk/gameplus/login/LoginController;->showCodekeyDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/ghomesdk/gameplus/login/LoginController;->showConfirmUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/ghomesdk/gameplus/login/LoginController;->showQuickValidateDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/ghomesdk/gameplus/login/LoginController;->showGeeTestCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/login/LoginController;ILjava/lang/String;IILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/ghomesdk/gameplus/login/LoginController;->callbackUI(ILjava/lang/String;IILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/login/LoginController;->showErrorUI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/LoginDispatcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p0

    return-object p0
.end method

.method private callbackUI(ILjava/lang/String;IILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "prevPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",currPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginController"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_8

    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p4, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/LoginController;->onLoginCancel()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xcc

    if-ne v0, p4, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/LoginController;->onPayCancel()V

    goto :goto_0

    :cond_2
    if-ne v1, p4, :cond_3

    .line 415
    invoke-virtual {p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController;->onLoginSuccess(Ljava/util/Map;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0, p3, p4, p5}, Lcom/ghomesdk/gameplus/login/LoginController;->onPageChanged(IILjava/util/Map;)V

    .line 434
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgPage:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 435
    invoke-direct {p0, p4, p5, p6}, Lcom/ghomesdk/gameplus/login/LoginController;->onShowDlg(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    :cond_4
    const/16 p3, 0x6b

    const/4 v0, 0x0

    if-ne p4, p3, :cond_6

    .line 439
    sget-boolean p3, Lcom/ghomesdk/gameplus/config/Config;->SHOW_GUEST_CONFIRM:Z

    if-eqz p3, :cond_5

    .line 440
    invoke-direct {p0, p4, p5, p6}, Lcom/ghomesdk/gameplus/login/LoginController;->onShowDlg(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    goto :goto_0

    .line 442
    :cond_5
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    :cond_6
    const/16 p3, 0x72

    if-ne p4, p3, :cond_7

    .line 445
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestEnterGame(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :cond_7
    :goto_0
    if-eqz p6, :cond_c

    .line 449
    invoke-interface {p6, p1, p2, p5}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 453
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result p3

    if-ne v1, p3, :cond_9

    .line 454
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-static {p3, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const/4 p3, 0x3

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result v1

    if-ne p3, v1, :cond_a

    .line 456
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-static {p3, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 457
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getTypeByErrorCode(Ljava/lang/String;)I

    move-result p3

    if-ne v0, p3, :cond_b

    .line 458
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    new-instance p4, Lcom/ghomesdk/gameplus/login/LoginController$6;

    invoke-direct {p4, p0, p2, p1}, Lcom/ghomesdk/gameplus/login/LoginController$6;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;I)V

    invoke-virtual {p3, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    :goto_1
    if-eqz p6, :cond_c

    .line 468
    invoke-interface {p6, p1, p2, p5}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private createGuestAccCompleteDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")",
            "Lcom/ghomesdk/gameplus/dialog/CommonDialog;"
        }
    .end annotation

    const-string p2, "phone"

    .line 627
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "accDesc"

    .line 628
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 630
    new-instance v0, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "gl_remember_account"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "gl_important_color"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v4

    invoke-virtual {v0, v1, v5}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 632
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v5, "gl_account_nick_name"

    invoke-static {v1, v5}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {p2, v1, v2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 635
    new-instance p1, Lcom/ghomesdk/gameplus/login/LoginController$12;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/login/LoginController$12;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 642
    new-instance v1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "gl_bind_succ"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "gl_confirm"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    .line 643
    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "gl_screen_shot_save"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setAdvice(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCloseKeyListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method private createGuestDirectCompleteDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")",
            "Lcom/ghomesdk/gameplus/dialog/CommonDialog;"
        }
    .end annotation

    const-string p2, "phone"

    .line 648
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 650
    new-instance p2, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "\u8bf7\u7262\u8bb0\u60a8\u7684\u767b\u5f55\u8d26\u53f7: %1s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "gl_important_color"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ColorHelper;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setTextStyle(I[Ljava/lang/String;)V

    .line 652
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "gl_upgrade_succ"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Landroid/text/SpannableString;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v0, "gl_confirm"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ghomesdk/gameplus/login/LoginController$13;

    invoke-direct {p2, p0}, Lcom/ghomesdk/gameplus/login/LoginController$13;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 653
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v0, "gl_screen_shot_save"

    .line 658
    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setAdvice(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method private createLoginGuestDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")",
            "Lcom/ghomesdk/gameplus/dialog/CommonDialog;"
        }
    .end annotation

    .line 580
    new-instance v2, Lcom/ghomesdk/gameplus/login/LoginController$7;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/LoginController$7;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 587
    new-instance v4, Lcom/ghomesdk/gameplus/login/LoginController$8;

    invoke-direct {v4, p0}, Lcom/ghomesdk/gameplus/login/LoginController$8;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 596
    new-instance v6, Lcom/ghomesdk/gameplus/login/LoginController$9;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/LoginController$9;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 603
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p1, "gl_advice_upgrade"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p2, "gl_enter_game"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p2, "gl_bind_account"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method private createPayGuestUpgradeDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")",
            "Lcom/ghomesdk/gameplus/dialog/CommonDialog;"
        }
    .end annotation

    .line 607
    new-instance v2, Lcom/ghomesdk/gameplus/login/LoginController$10;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/LoginController$10;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 616
    new-instance v4, Lcom/ghomesdk/gameplus/login/LoginController$11;

    invoke-direct {v4, p0}, Lcom/ghomesdk/gameplus/login/LoginController$11;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 623
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "\u7531\u4e8e\u60a8\u8fd8\u672a\u7ed1\u5b9a\u4e3b\u53f7\uff0c\u6545\u65e0\u6cd5\u8fdb\u884c\u652f\u4ed8\u3002"

    const-string v3, "\u7ed1\u5b9a"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public static destroyInstance()V
    .locals 1

    .line 76
    sget-object v0, Lcom/ghomesdk/gameplus/login/LoginController;->instance:Lcom/ghomesdk/gameplus/login/LoginController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/ghomesdk/gameplus/login/LoginController;->instance:Lcom/ghomesdk/gameplus/login/LoginController;

    :cond_0
    return-void
.end method

.method private getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;
    .locals 1

    .line 390
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginController$5;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController$5;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-object v0
.end method

.method private getCloseConfirm()Lcom/ghomesdk/gameplus/login/model/LoginConfirm;
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->isPayProcess()Z

    move-result v0

    const-string v1, "dlg_guestuploginclose_cancel"

    const-string v2, "dlg_guestuploginclose_ok"

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    .line 711
    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u662f\u5426\u8981\u9000\u51fa\u652f\u4ed8\u6d41\u7a0b"

    .line 710
    invoke-direct {p0, v2, v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    goto/16 :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->isGuestProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_guestuploginclose_text"

    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    .line 714
    invoke-static {v3, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-direct {p0, v0, v2, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    goto/16 :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->isFillRealInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_fillrealinfoclose_text"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "dlg_fillrealinfoclose_ok"

    .line 717
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_fillrealinfoclose_cancel"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-direct {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_activeclose_text"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "dlg_activeclose_ok"

    .line 720
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_activeclose_cancel"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-direct {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->isBindPhone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_binphoneclose_text"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "dlg_binphoneclose_ok"

    .line 723
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_binphoneclose_cancel"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-direct {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_loginclose_text"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "dlg_loginclose_ok"

    .line 726
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_loginclose_cancel"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-direct {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;
    .locals 1

    .line 732
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginController$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController$17;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDlg(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")",
            "Lcom/ghomesdk/gameplus/dialog/CommonDialog;"
        }
    .end annotation

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 568
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->createGuestDirectCompleteDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1

    .line 566
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->createGuestAccCompleteDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1

    .line 564
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->createPayGuestUpgradeDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1

    .line 562
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->createLoginGuestDlg(Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/ghomesdk/gameplus/login/LoginController;
    .locals 1

    .line 69
    sget-object v0, Lcom/ghomesdk/gameplus/login/LoginController;->instance:Lcom/ghomesdk/gameplus/login/LoginController;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/login/LoginController;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/login/LoginController;->instance:Lcom/ghomesdk/gameplus/login/LoginController;

    .line 72
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/login/LoginController;->instance:Lcom/ghomesdk/gameplus/login/LoginController;

    return-object v0
.end method

.method private getPage(IILjava/util/Map;)Lcom/ghomesdk/gameplus/login/ui/LoginView;
    .locals 3

    .line 1
    new-instance v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v1

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V

    .line 3
    return-object v0
.end method

.method private getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;
    .locals 1

    .line 800
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginController$23;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController$23;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-object v0
.end method

.method private onPageChanged(IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->getPage(IILjava/util/Map;)Lcom/ghomesdk/gameplus/login/ui/LoginView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_1

    return-void

    .line 488
    :cond_1
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    if-eqz p2, :cond_2

    .line 489
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->hide()V

    const/4 p2, 0x0

    .line 490
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 492
    :cond_2
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 493
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->show()V

    return-void
.end method

.method private onShowDlg(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->getDlg(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private showCodekeyDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 12

    move-object v0, p0

    .line 663
    new-instance v11, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    iget-object v2, v0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "gl_app_theme_verify_code"

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    new-instance v10, Lcom/ghomesdk/gameplus/login/LoginController$14;

    move-object/from16 v1, p6

    invoke-direct {v10, p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController$14;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    move-object v1, v11

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/login/LoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 671
    invoke-virtual {v11}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->show()V

    return-void
.end method

.method private showConfirmUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 7

    .line 752
    new-instance v4, Lcom/ghomesdk/gameplus/login/LoginController$18;

    invoke-direct {v4, p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController$18;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 760
    new-instance v2, Lcom/ghomesdk/gameplus/login/LoginController$19;

    invoke-direct {v2, p0, p4}, Lcom/ghomesdk/gameplus/login/LoginController$19;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 769
    new-instance p4, Lcom/ghomesdk/gameplus/login/LoginController$20;

    invoke-direct {p4, p0, p6}, Lcom/ghomesdk/gameplus/login/LoginController$20;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 778
    new-instance v6, Lcom/ghomesdk/gameplus/login/LoginController$21;

    invoke-direct {v6, p0, p7}, Lcom/ghomesdk/gameplus/login/LoginController$21;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 786
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->showDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)V

    return-void
.end method

.method private showErrorUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 791
    new-instance v6, Lcom/ghomesdk/gameplus/login/LoginController$22;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/LoginController$22;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 796
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->showDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)V

    return-void
.end method

.method private showGeeTestCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 8

    .line 697
    new-instance v7, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/ghomesdk/gameplus/login/LoginController$16;

    invoke-direct {v6, p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController$16;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 703
    invoke-virtual {v7}, Lcom/ghomesdk/gameplus/geetest/GeetestCodeBind;->customVerity()V

    return-void
.end method

.method private showQuickValidateDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 11

    move-object v0, p0

    .line 675
    new-instance v10, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    iget-object v2, v0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    new-instance v9, Lcom/ghomesdk/gameplus/login/LoginController$15;

    move-object/from16 v1, p8

    invoke-direct {v9, p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController$15;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 683
    invoke-virtual {v10}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createCommonDlg(Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 10

    move-object v0, p0

    .line 576
    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object v1

    return-object v1
.end method

.method public doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {p0, p4}, Lcom/ghomesdk/gameplus/login/LoginController;->getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doBack()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doBack(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCancel()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/ui/LoginView;->onClickAndroidBack()V

    :cond_0
    return-void
.end method

.method public doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V
    .locals 11

    move-object v0, p0

    .line 255
    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    new-instance v2, Lcom/ghomesdk/gameplus/login/LoginController$3;

    move-object/from16 v3, p9

    invoke-direct {v2, p0, v3}, Lcom/ghomesdk/gameplus/login/LoginController$3;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V

    invoke-direct {p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickCancelFillRealInfo()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickCancelFillRealInfo(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickForgetPassword(Ljava/lang/String;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickForgetPassword(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickGuestLogin(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickPwdLogin(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickPwdLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 8

    .line 220
    new-instance v3, Lcom/ghomesdk/gameplus/login/LoginController$2;

    invoke-direct {v3, p0, p5, p6}, Lcom/ghomesdk/gameplus/login/LoginController$2;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 251
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {p0, p6}, Lcom/ghomesdk/gameplus/login/LoginController;->getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClickSmsLogin(Ljava/lang/String;)V
    .locals 1

    .line 186
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickSmsLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doClose()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCloseConfirm()Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doCloseView()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doCloseWindow(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doDaoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doFillRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 7

    .line 195
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    new-instance v1, Lcom/ghomesdk/gameplus/login/LoginController$1;

    invoke-direct {v1, p0, p6}, Lcom/ghomesdk/gameplus/login/LoginController$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doFillRealName(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doLogout(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doLogout(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doPayStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-static {v1, v0}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    .line 132
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 135
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    .line 137
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p3, "dlg_guestupgrade_text"

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v0, "dlg_guestupgrade_cancel"

    .line 138
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_guestupgrade_ok"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p2

    .line 140
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p1

    invoke-virtual {p3, v0, p2, v1, p1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doPay(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 8

    .line 272
    invoke-virtual {p0, p3}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 273
    new-instance v4, Lcom/ghomesdk/gameplus/login/LoginController$4;

    invoke-direct {v4, p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController$4;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    .line 304
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v2, "dlg_fk_text"

    .line 305
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v3, "dlg_fk_ok"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v3

    .line 306
    invoke-direct {p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController;->getResultCallback(Lcom/ghomesdk/gameplus/callback/ErrorCallback;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 304
    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/RiskCtrlInterface;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doQuickGuestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;)V
    .locals 9

    const-string v0, "\u5feb\u901f\u767b\u5f55\u5931\u8d25\uff0c\u662f\u5426\u8fd8\u8981\u4f7f\u7528\u8be5\u8d26\u53f7\u8fdb\u884c\u767b\u5f55"

    const-string v1, "\u7ee7\u7eed"

    const-string v2, "\u53d6\u6d88"

    .line 351
    invoke-direct {p0, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    .line 352
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/login/LoginController;->confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doQuickLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$QuickLoginCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickLoginOther()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doOtherLogin(Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doQuickLoginRemove(Ljava/lang/String;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doQuickLoginRemove(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doResetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 339
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doResetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doSmallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 108
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-static {v1, v0}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    .line 113
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    .line 114
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 117
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    .line 118
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p3, "dlg_autologin_text"

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v0, "dlg_autologin_ok"

    .line 119
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_autologin_cancel"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p2

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    .line 121
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->confirm:Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doStart(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 p5, 0x0

    invoke-direct {p0, p5}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdFillRealBindPHone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 8

    .line 216
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 p7, 0x0

    invoke-direct {p0, p7}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doThirdFillRealBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public doUpgradeStart(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-static {v1, v0}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dlgLogin:Lcom/ghomesdk/gameplus/login/LoginDialog;

    .line 150
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 153
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    .line 155
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string p3, "dlg_guestupgrade_text"

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v0, "dlg_guestupgrade_cancel"

    .line 156
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    const-string v1, "dlg_guestupgrade_ok"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->getConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ghomesdk/gameplus/login/model/LoginConfirm;

    move-result-object p2

    .line 158
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    move-result-object p1

    invoke-virtual {p3, v0, p2, p1}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doGameGuestUpgrade(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method

.method public getInputPhoneStr()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginUserId()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method protected onLoginCancel()V
    .locals 4

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 376
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    if-eqz v0, :cond_0

    const-string v1, "-100"

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "\u767b\u5f55\u7a97\u53e3\u5173\u95ed\u3002"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onLoginSuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    .line 369
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 370
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v2, ""

    invoke-interface {v0, v1, v2, p1}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected onPayCancel()V
    .locals 4

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->viewCurrent:Lcom/ghomesdk/gameplus/login/ui/LoginView;

    const-string v0, "LoginController"

    const-string v1, "onPayCancel"

    .line 383
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->callback:Lcom/ghomesdk/gameplus/callback/LoginCallback;

    if-eqz v0, :cond_0

    const-string v1, "-100"

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "\u767b\u5f55\u7a97\u53e3\u5173\u95ed\u3002"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setInputPhoneStr(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController;->dispatcher:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->loginManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->getLoginContext()Lcom/ghomesdk/gameplus/login/LoginContext;

    move-result-object v0

    iput-object p1, v0, Lcom/ghomesdk/gameplus/login/LoginContext;->inputPhoneStr:Ljava/lang/String;

    return-void
.end method

.method public startLogin(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 98
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/ghomesdk/gameplus/login/LoginDialog;-><init>(Landroid/content/Context;IILcom/ghomesdk/gameplus/callback/LoginCallback;)V

    .line 99
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->show()V

    return-void
.end method

.method public startPay(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 103
    new-instance v0, Lcom/ghomesdk/gameplus/login/LoginDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/ghomesdk/gameplus/login/LoginDialog;-><init>(Landroid/content/Context;IILcom/ghomesdk/gameplus/callback/LoginCallback;)V

    .line 104
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->show()V

    return-void
.end method
