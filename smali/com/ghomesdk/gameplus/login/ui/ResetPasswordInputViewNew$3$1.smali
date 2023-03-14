.class Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;
.super Ljava/lang/Object;
.source "ResetPasswordInputViewNew.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$200(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)V

    .line 84
    new-instance p1, Lcom/ghomesdk/gameplus/utils/MySpannableString;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u53d1\u9001\u77ed\u4fe1\u81f3\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/utils/MySpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v3, "gl_bt_assistant_light"

    invoke-static {v1, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object v3, v3, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$100(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, p2, v1, v0}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->setFontStyle(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/utils/MySpannableString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$300(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$300(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->ctx:Landroid/app/Activity;

    const-string v0, "gl_get_ver_code"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
