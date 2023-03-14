.class Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;
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

    .line 76
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 7

    .line 79
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object v2, v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$000(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;)V

    const-string v4, "2"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickSendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
