.class Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;
.super Landroid/os/CountDownTimer;
.source "CheckPayOrderStatusDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountDown"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;


# direct methods
.method public constructor <init>(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;Landroid/widget/Button;JJ)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    .line 71
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 72
    iput-object p2, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "btn_red_bg"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 78
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->this$0:Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;->access$000(Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "btn_grey_disable"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/CheckPayOrderStatusDialog$CountDown;->mButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd4\u56de\u6e38\u620f("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
