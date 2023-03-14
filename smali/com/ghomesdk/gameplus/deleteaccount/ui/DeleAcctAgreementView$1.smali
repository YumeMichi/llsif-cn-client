.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;
.super Ljava/lang/Object;
.source "DeleAcctAgreementView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/MySpannableString$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 46
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->ctx:Landroid/content/Context;

    const-string v2, "gl_app_theme_light"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->ACCOUNT_DELETE_AGREE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->setContentUrl(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->show()V

    return-void
.end method
