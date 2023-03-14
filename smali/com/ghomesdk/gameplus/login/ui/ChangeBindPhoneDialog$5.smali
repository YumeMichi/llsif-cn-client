.class Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;
.super Ljava/lang/Object;
.source "ChangeBindPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/GetDataCallback;


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

    .line 183
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->access$200(Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
