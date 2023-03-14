.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;
.super Landroid/os/CountDownTimer;
.source "BindPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;JJ)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gl_get_ver_code"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
