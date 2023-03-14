.class Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;
.super Ljava/lang/Object;
.source "QuickLoginView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->init(Landroid/app/Activity;Lcom/ghomesdk/gameplus/login/LoginDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Landroid/app/Activity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->val$ctx:Landroid/app/Activity;

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$002(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    .line 54
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$000(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    move-result-object p1

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setContentUrl(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;->access$000(Lcom/ghomesdk/gameplus/login/ui/QuickLoginView;)Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->show()V

    return-void
.end method
