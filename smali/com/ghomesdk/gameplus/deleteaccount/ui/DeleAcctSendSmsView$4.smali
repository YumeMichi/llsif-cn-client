.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;
.super Ljava/lang/Object;
.source "DeleAcctSendSmsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->val$dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->isPhoneFormatWrong(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->val$dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$300(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->setPhoneNumber(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$300(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$4;->val$dlg:Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->show()V

    return-void
.end method
