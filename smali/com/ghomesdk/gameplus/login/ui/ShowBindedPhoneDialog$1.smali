.class Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;
.super Ljava/lang/Object;
.source "ShowBindedPhoneDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 116
    new-instance p1, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->access$000(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "gl_app_theme_light"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->access$100(Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;-><init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V

    const/4 p2, 0x0

    .line 117
    sput-boolean p2, Lcom/ghomesdk/gameplus/login/ui/BindPhoneDialog;->hasShowDialog:Z

    .line 118
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/ui/ChangeBindPhoneDialog;->show()V

    .line 119
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/ui/ShowBindedPhoneDialog;->dismiss()V

    return-void
.end method
