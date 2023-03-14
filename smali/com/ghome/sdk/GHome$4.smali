.class Lcom/ghome/sdk/GHome$4;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->agreementAction(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$sceneStatus:Ljava/lang/String;

.field final synthetic val$versionLocal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$4;->val$gameId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$4;->val$sceneStatus:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/GHome$4;->val$versionLocal:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    iget p1, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    if-ne p1, v1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    iget v0, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    iget-object v1, p0, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {p1, p2, v0, p3, v1}, Lcom/ghome/sdk/GHome;->access$900(Lcom/ghome/sdk/GHome;Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    goto :goto_1

    .line 521
    :cond_1
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0, v1}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 522
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    const-string p2, "agreement_checkbox_selected"

    invoke-static {p1, p2, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 523
    invoke-static {v1}, Lcom/ghome/sdk/GHome;->access$1302(Z)Z

    .line 524
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$1100(Lcom/ghome/sdk/GHome;Landroid/content/Context;)V

    .line 526
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 p2, 0x0

    const-string p3, ""

    invoke-interface {p1, v0, p3, p2}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 529
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/ghome/sdk/GHome;->access$1200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;)V

    goto :goto_1

    .line 479
    :cond_2
    :goto_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    const-string v2, "gl_agreement_retry"

    invoke-static {p3, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    const-string v0, "dlg_autologin_cancel"

    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/ghome/sdk/GHome$4$2;

    invoke-direct {p3, p0, p2}, Lcom/ghome/sdk/GHome$4$2;-><init>(Lcom/ghome/sdk/GHome$4;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/ghome/sdk/GHome$4;->val$activity:Landroid/app/Activity;

    const-string v0, "dlg_loginclose_ok"

    .line 508
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/ghome/sdk/GHome$4$1;

    invoke-direct {p3, p0, p2}, Lcom/ghome/sdk/GHome$4$1;-><init>(Lcom/ghome/sdk/GHome$4;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 514
    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 475
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$4;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
