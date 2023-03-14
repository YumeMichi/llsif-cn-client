.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SelectLoginModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 251
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 255
    :cond_0
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length p1, p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    .line 256
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "daoyu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    .line 258
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;-><init>(Landroid/app/Activity;)V

    .line 259
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;->startLogin()V

    goto :goto_0

    .line 260
    :cond_1
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object p1, p1, v0

    const-string v0, "wegame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$7;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$300(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSmsLogin(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
