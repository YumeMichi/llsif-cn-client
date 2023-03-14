.class Lcom/ghome/sdk/GHome$3;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->afterPrivacyShow(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$data:Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

.field final synthetic val$finalAgreementContent:Ljava/lang/String;

.field final synthetic val$finalAgreementPrivacy:Ljava/lang/String;

.field final synthetic val$finalAgreementService:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/ghome/sdk/GHome$3;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$3;->val$finalAgreementService:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$3;->val$finalAgreementPrivacy:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/GHome$3;->val$data:Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    iput-object p6, p0, Lcom/ghome/sdk/GHome$3;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p7, p0, Lcom/ghome/sdk/GHome$3;->val$finalAgreementContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperateCallback(Z)V
    .locals 10

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 403
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3;->val$finalAgreementService:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    .line 404
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3;->val$finalAgreementPrivacy:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 406
    iget-object p1, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ghome/sdk/GHome$3;->val$data:Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;

    iget v2, v2, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {v1}, Lcom/ghome/sdk/GHome;->access$302(Z)Z

    .line 409
    iget-object v4, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/ghome/sdk/GHome$3;->val$agreementCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v6, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v7, "\u534f\u8bae\u63a5\u53e3\u6210\u529f"

    const-string v9, "agreementAction"

    invoke-static/range {v4 .. v9}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ghome/sdk/GHome$3;->val$activity:Landroid/app/Activity;

    const-string v1, "gl_reread_privacy_text"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghome/sdk/GHome$3$2;

    invoke-direct {v0, p0}, Lcom/ghome/sdk/GHome$3$2;-><init>(Lcom/ghome/sdk/GHome$3;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    .line 442
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghome/sdk/GHome$3$1;

    invoke-direct {v0, p0}, Lcom/ghome/sdk/GHome$3$1;-><init>(Lcom/ghome/sdk/GHome$3;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
