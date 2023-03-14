.class Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;
.super Ljava/lang/Object;
.source "SelectLoginModeView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->agreementInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    iget-object v1, p1, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->ctx:Landroid/app/Activity;

    const-string v3, "gl_app_theme_light"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$002(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    .line 106
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$000(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    move-result-object p1

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setContentUrl(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;->access$000(Lcom/ghomesdk/gameplus/login/ui/SelectLoginModeView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->show()V

    return-void
.end method
