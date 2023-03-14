.class Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;
.super Ljava/lang/Object;
.source "ChangeBindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$300(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "gl_get_ver_code"

    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
