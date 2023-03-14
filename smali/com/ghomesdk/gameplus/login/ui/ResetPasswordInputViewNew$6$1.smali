.class Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6$1;
.super Ljava/lang/Object;
.source "ResetPasswordInputViewNew.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$400(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$400(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew$6;->this$0:Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;->access$002(Lcom/ghomesdk/gameplus/login/ui/ResetPasswordInputViewNew;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
