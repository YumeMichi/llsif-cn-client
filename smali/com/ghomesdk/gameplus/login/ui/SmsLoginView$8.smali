.class Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SmsLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 6

    .line 183
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$700(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    iget-object v2, p1, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->ctx:Landroid/app/Activity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$400(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;->access$800(Lcom/ghomesdk/gameplus/login/ui/SmsLoginView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginController;->doSmsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
