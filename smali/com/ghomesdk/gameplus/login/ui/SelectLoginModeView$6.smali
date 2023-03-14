.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;
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

    .line 223
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 227
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 231
    :cond_0
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    array-length p1, p1

    const/4 v0, 0x1

    const-string v1, ""

    if-lt p1, v0, :cond_3

    .line 232
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v2, "daoyu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    .line 234
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;

    invoke-direct {v0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;-><init>(Landroid/app/Activity;)V

    .line 235
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/DaoyuLogin;->startLogin()V

    goto :goto_0

    .line 236
    :cond_1
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->LOGIN_BUTTONS:[Ljava/lang/String;

    aget-object p1, p1, v0

    const-string v0, "wegame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$300(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSmsLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSmsLogin(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
