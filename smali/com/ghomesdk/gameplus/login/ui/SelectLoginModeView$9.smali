.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;
.super Ljava/lang/Object;
.source "SelectLoginModeView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/listener/TextInItemClickListener;


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

    .line 379
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextClick(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_7

    const-string v0, "\u5fae\u535a"

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 389
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 390
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->startLogin()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "\u5fae\u4fe1"

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 397
    :cond_2
    new-instance p1, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;-><init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V

    .line 398
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->login()V

    goto :goto_0

    :cond_3
    const-string v0, "QQ"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4

    .line 402
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 405
    :cond_4
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    .line 406
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->getIntance(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginController;)Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->login()V

    goto :goto_0

    :cond_5
    const-string v0, "WeGame"

    .line 408
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 410
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 411
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$200(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 414
    :cond_6
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$9;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$300(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V

    :cond_7
    :goto_0
    return-void
.end method
