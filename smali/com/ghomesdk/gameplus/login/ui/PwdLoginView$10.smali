.class Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "PwdLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 7

    .line 168
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$100(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$400(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$500(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    iget-object v3, v0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->ctx:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$10;)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController;->doPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
