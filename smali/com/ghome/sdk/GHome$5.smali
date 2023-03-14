.class Lcom/ghome/sdk/GHome$5;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->dealAgreementContent(Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$finalAgreementAllContent:Ljava/lang/String;

.field final synthetic val$finalAgreementPrivacy:Ljava/lang/String;

.field final synthetic val$finalAgreementService:Ljava/lang/String;

.field final synthetic val$versionNew:I


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/ghome/sdk/GHome$5;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$5;->val$finalAgreementService:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$5;->val$finalAgreementPrivacy:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/ghome/sdk/GHome$5;->val$versionNew:I

    iput-object p6, p0, Lcom/ghome/sdk/GHome$5;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput-object p7, p0, Lcom/ghome/sdk/GHome$5;->val$finalAgreementAllContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperateCallback(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5;->val$finalAgreementService:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    .line 566
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5;->val$finalAgreementPrivacy:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 568
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ghome/sdk/GHome$5;->val$versionNew:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    sget-object v4, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    invoke-static {p1, v1, v3, v4}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 569
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$1402(Z)Z

    .line 571
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    .line 574
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/ghome/sdk/GHome;->access$1200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;)V

    goto :goto_0

    .line 577
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    const-string v2, "gl_reread_privacy_text"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe2(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setHighlightColor(I)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghome/sdk/GHome$5$2;

    invoke-direct {v0, p0}, Lcom/ghome/sdk/GHome$5$2;-><init>(Lcom/ghome/sdk/GHome$5;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    .line 608
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghome/sdk/GHome$5$1;

    invoke-direct {v0, p0}, Lcom/ghome/sdk/GHome$5$1;-><init>(Lcom/ghome/sdk/GHome$5;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
