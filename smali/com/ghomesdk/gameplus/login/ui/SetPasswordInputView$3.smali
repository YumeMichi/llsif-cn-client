.class Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SetPasswordInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->access$000(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/login/LoginController;->doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
