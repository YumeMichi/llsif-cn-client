.class Lcom/ghome/sdk/GHome$2;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->doPrivacyAgreementUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
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

.field final synthetic val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$reqScene:Ljava/lang/String;

.field final synthetic val$versionLocal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/ghome/sdk/GHome$2;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$2;->val$gameId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$2;->val$reqScene:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/GHome$2;->val$versionLocal:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghome/sdk/GHome$2;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 2

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/ghome/sdk/GHome$2;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$2;->val$gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$2;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {p1, p2, v0, v1, p3}, Lcom/ghome/sdk/GHome;->access$200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    goto :goto_1

    .line 341
    :cond_1
    :goto_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    const-string p3, "gl_agreement_retry"

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    const-string p3, "dlg_autologin_cancel"

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ghome/sdk/GHome$2$2;

    invoke-direct {p2, p0}, Lcom/ghome/sdk/GHome$2$2;-><init>(Lcom/ghome/sdk/GHome$2;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    const-string p3, "dlg_loginclose_ok"

    .line 357
    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/ghome/sdk/GHome$2$1;

    invoke-direct {p2, p0}, Lcom/ghome/sdk/GHome$2$1;-><init>(Lcom/ghome/sdk/GHome$2;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 363
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 336
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$2;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method
