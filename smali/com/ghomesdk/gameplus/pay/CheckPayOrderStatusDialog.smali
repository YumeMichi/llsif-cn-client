.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;
.super Landroid/app/Dialog;
.source "CheckPayOrderStatusDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;
    }
.end annotation


# instance fields
.field private initLayoutId:I

.field private mActivity:Landroid/app/Activity;

.field private mOwnerThread:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;)V
    .locals 2

    const-string v0, "gl_dialog_full_screen"

    .line 23
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->initLayoutId:I

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mActivity:Landroid/app/Activity;

    .line 20
    iput-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mOwnerThread:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mOwnerThread:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    .line 26
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 27
    sget-boolean p2, Lcom/ghomesdk/gameplus/config/Assembly;->isPortrait:Z

    if-eqz p2, :cond_0

    const-string p2, "gl_pt_pay_check_order_status_portrait"

    .line 28
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->initLayoutId:I

    goto :goto_0

    :cond_0
    const-string p2, "gl_pt_pay_check_order_status"

    .line 30
    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->initLayoutId:I

    .line 33
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 54
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mOwnerThread:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const-string v0, "-10869604"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {p1, v0, v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->initLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->setContentView(I)V

    .line 40
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mActivity:Landroid/app/Activity;

    const-string v0, "order_close"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mActivity:Landroid/app/Activity;

    const-string v0, "gl_pay_check_order_status_return_game_btn_id"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/Button;

    .line 43
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance p1, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;-><init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;Landroid/widget/Button;JJ)V

    .line 45
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->mOwnerThread:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;

    const-string p2, "-10869604"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {p1, p2, v0}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusThread;->doCallback(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
