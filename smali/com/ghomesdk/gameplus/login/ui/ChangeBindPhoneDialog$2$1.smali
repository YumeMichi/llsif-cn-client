.class Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2$1;
.super Ljava/lang/Object;
.source "ChangeBindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
