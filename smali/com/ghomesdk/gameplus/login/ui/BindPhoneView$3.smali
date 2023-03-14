.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;
.super Ljava/lang/Object;
.source "BindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 85
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "gl_input_phone"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->isPhoneFormatWrong(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$500(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$400(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneStr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3$1;

    invoke-direct {v8, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$3;)V

    const-string v6, "5"

    invoke-virtual/range {v2 .. v8}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
