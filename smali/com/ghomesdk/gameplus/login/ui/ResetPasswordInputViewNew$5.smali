.class Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "ResetPasswordInputViewNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$700(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$000(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->setPhoneNumber(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$000(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->setInputPhoneStr(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$700(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/VoiceCodeDialog;->show()V

    return-void
.end method
