.class Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;
.super Ljava/lang/Object;
.source "ChangeBindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


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

    .line 158
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doThirdBindPhone: code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", map: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ChangeBindPhoneDialog"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/app/Activity;

    move-result-object p1

    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$400(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "gl_bindphone"

    invoke-static {p1, v0, p3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$500(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "\u6362\u7ed1\u6210\u529f"

    invoke-interface {p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 165
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->dismiss()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$500(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object p1

    const/4 p3, 0x4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "\u6362\u7ed1\u5931\u8d25"

    invoke-interface {p1, p3, p2, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
