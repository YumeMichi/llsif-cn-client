.class public Lcom/ghomesdk/gameplus/dialog/WaitingDialog;
.super Landroid/app/Dialog;
.source "WaitingDialog.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WaitingDialog"

.field private static volatile count:I

.field private static volatile instance:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;


# instance fields
.field private TIMER_PERIOD:I

.field private _loading_timer:Ljava/util/Timer;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private ctx:Landroid/content/Context;

.field private loadingIv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    const/16 p2, 0x12c

    .line 33
    iput p2, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TIMER_PERIOD:I

    .line 38
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 23
    sget v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->count:I

    return v0
.end method

.method static synthetic access$104()I
    .locals 1

    .line 23
    sget v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->count:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 1

    .line 23
    sget v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->count:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->count:I

    return v0
.end method

.method static synthetic access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;
    .locals 1

    .line 23
    sget-object v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->instance:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)Lcom/ghomesdk/gameplus/dialog/WaitingDialog;
    .locals 0

    .line 23
    sput-object p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->instance:Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method public static hideUI(Landroid/content/Context;)V
    .locals 1

    .line 82
    sget-object p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TAG:Ljava/lang/String;

    const-string v0, "WaitingDialog hideUI"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$3;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->ctx:Landroid/content/Context;

    const-string v1, "iv_wait_loading"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->loadingIv:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->loadingIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static showUI(Landroid/content/Context;I)V
    .locals 2

    .line 65
    sget-object v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TAG:Ljava/lang/String;

    const-string v1, "WaitingDialog showUI"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 119
    sget-object v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TAG:Ljava/lang/String;

    const-string v1, "WaitingDialog hide"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 129
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->requestWindowFeature(I)Z

    .line 45
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->ctx:Landroid/content/Context;

    const-string v0, "gl_login_waiting_dlg"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->initView()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 97
    sget-object v0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TAG:Ljava/lang/String;

    const-string v1, "WaitingDialog show"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->_loading_timer:Ljava/util/Timer;

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog$4;-><init>(Lcom/ghomesdk/gameplus/dialog/WaitingDialog;)V

    iget v2, p0, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->TIMER_PERIOD:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
