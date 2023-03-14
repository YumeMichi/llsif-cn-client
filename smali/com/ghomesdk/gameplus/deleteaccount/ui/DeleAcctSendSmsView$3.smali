.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "DeleAcctSendSmsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 9

    .line 101
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v1, "gl_input_phone"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

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

    .line 109
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$300(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object v4, v3, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneStr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3$1;

    invoke-direct {v8, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$3;)V

    const-string v6, "7"

    invoke-virtual/range {v2 .. v8}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
